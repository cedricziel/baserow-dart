import 'package:baserow/baserow.dart';
import 'package:test/test.dart';

void main() {
  group('ListRowsOptions', () {
    test('toQueryParameters includes basic parameters correctly', () {
      final options = ListRowsOptions(
        page: 2,
        size: 25,
        orderBy: ['-name'],
        filters: [
          RowFilter(
            field: 'age',
            operator: FilterOperator.higherThan,
            value: 18,
          ),
        ],
        includeFieldMetadata: true,
        viewId: 123,
        userFieldNames: true,
      );

      final params = options.toQueryParameters();

      expect(params['page'], equals('2'));
      expect(params['size'], equals('25'));
      expect(params['order_by'], equals('-name'));
      expect(params['filters'], contains('"field":"age"'));
      expect(params['filters'], contains('"type":"higher_than"'));
      expect(params['filters'], contains('"value":18'));
      expect(
          params['filters'],
          isNot(contains(
              '"filter_type"'))); // Should not include filter_type for single filter
      expect(params['include'], equals('field_metadata'));
      expect(params['view_id'], equals('123'));
      expect(params['user_field_names'], equals('true'));
    });

    test('handles complex ordering with multiple fields', () {
      final options = ListRowsOptions(
        orderBy: ['+first_name', '-last_name', 'age'],
      );

      final params = options.toQueryParameters();
      expect(params['order_by'], equals('first_name,-last_name,age'));
    });

    test('escapes field names with special characters', () {
      final options = ListRowsOptions(
        orderBy: ['First, Name', 'Last "Name"'],
      );

      final params = options.toQueryParameters();
      expect(
        params['order_by'],
        equals('"First, Name","Last \\"Name\\""'),
      );
    });

    test('handles search parameter', () {
      final options = ListRowsOptions(
        search: 'test query',
      );

      final params = options.toQueryParameters();
      expect(params['search'], equals('test query'));
    });

    test('handles include and exclude fields', () {
      final options = ListRowsOptions(
        include: ['name', 'email'],
        exclude: ['sensitive_data'],
      );

      final params = options.toQueryParameters();
      expect(params['include'], equals('name,email'));
      expect(params['exclude'], equals('sensitive_data'));
    });

    test('handles field filters', () {
      final options = ListRowsOptions(
        fieldFilters: {
          'name': {'contains': 'John'},
          'age': {'greater_than': '18'},
        },
      );

      final params = options.toQueryParameters();
      expect(params['filter__name__contains'], equals('John'));
      expect(params['filter__age__greater_than'], equals('18'));
    });

    test('handles link row joins', () {
      final options = ListRowsOptions(
        linkRowJoins: {
          'company': ['name', 'address'],
          'department': ['title'],
        },
      );

      final params = options.toQueryParameters();
      expect(params['company__join'], equals('name,address'));
      expect(params['department__join'], equals('title'));
    });

    test('handles OR filter type', () {
      final options = ListRowsOptions(
        filterType: 'OR',
        filters: [
          RowFilter(
            field: 'status',
            operator: FilterOperator.equal,
            value: 'active',
          ),
          RowFilter(
            field: 'status',
            operator: FilterOperator.equal,
            value: 'pending',
          ),
        ],
      );

      final params = options.toQueryParameters();
      expect(params['filter_type'], equals('OR'));
      expect(params['filters'], contains('"filter_type":"OR"'));
    });

    test('combines multiple filter types correctly', () {
      final options = ListRowsOptions(
        filters: [
          RowFilter(
            field: 'age',
            operator: FilterOperator.higherThan,
            value: 18,
          ),
        ],
        fieldFilters: {
          'name': {'contains': 'John'},
        },
        search: 'test',
      );

      final params = options.toQueryParameters();
      expect(params['filters'], contains('"field":"age"'));
      expect(params['filter__name__contains'], equals('John'));
      expect(params['search'], equals('test'));
    });

    test('handles empty filters gracefully', () {
      final options = ListRowsOptions(
        filters: [],
        fieldFilters: {},
      );

      final params = options.toQueryParameters();
      expect(params.containsKey('filters'), isFalse);
      expect(params.keys.where((k) => k.startsWith('filter__')), isEmpty);
    });

    test('handles null values correctly', () {
      final options = ListRowsOptions(
        orderBy: null,
        search: null,
        include: null,
        exclude: null,
        fieldFilters: null,
        linkRowJoins: null,
      );

      final params = options.toQueryParameters();
      expect(params.containsKey('order_by'), isFalse);
      expect(params.containsKey('search'), isFalse);
      expect(params.containsKey('include'), isFalse);
      expect(params.containsKey('exclude'), isFalse);
    });

    test('handles complex filter values', () {
      final options = ListRowsOptions(
        filters: [
          RowFilter(
            field: 'tags',
            operator: FilterOperator.contains,
            value: ['tag1', 'tag2'],
          ),
          RowFilter(
            field: 'metadata',
            operator: FilterOperator.hasValueEqual,
            value: {'key': 'value'},
          ),
        ],
      );

      final params = options.toQueryParameters();
      expect(params['filters'], contains('"value":["tag1","tag2"]'));
      expect(params['filters'], contains('"value":{"key":"value"}'));
    });

    test('handles date filter values', () {
      final options = ListRowsOptions(
        filters: [
          RowFilter(
            field: 'created_at',
            operator: FilterOperator.dateIsBefore,
            value: '2024-01-01T00:00:00Z',
          ),
        ],
      );

      final params = options.toQueryParameters();
      expect(params['filters'], contains('"value":"2024-01-01T00:00:00Z"'));
    });

    test('handles boolean filter values', () {
      final options = ListRowsOptions(
        filters: [
          RowFilter(
            field: 'is_active',
            operator: FilterOperator.equal,
            value: true,
          ),
          RowFilter(
            field: 'is_deleted',
            operator: FilterOperator.equal,
            value: false,
          ),
        ],
      );

      final params = options.toQueryParameters();
      expect(params['filters'], contains('"value":true'));
      expect(params['filters'], contains('"value":false'));
    });

    test('handles numeric filter values', () {
      final options = ListRowsOptions(
        filters: [
          RowFilter(
            field: 'price',
            operator: FilterOperator.higherThan,
            value: 100.50,
          ),
          RowFilter(
            field: 'quantity',
            operator: FilterOperator.lowerThan,
            value: 5,
          ),
        ],
      );

      final params = options.toQueryParameters();
      expect(params['filters'], contains('"value":100.5'));
      expect(params['filters'], contains('"value":5'));
    });
  });
}
