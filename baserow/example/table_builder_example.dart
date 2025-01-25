import 'package:baserow/baserow.dart';

void main() {
  // Create a new table builder
  final tableBuilder = TableBuilder('My Table')
    ..withField('Name', 'text', required: true)
    ..withField('Age', 'number')
    ..withView('Grid View', 'grid');

  // Build the table configuration
  final tableConfig = tableBuilder.build();
  print(tableConfig);
}
