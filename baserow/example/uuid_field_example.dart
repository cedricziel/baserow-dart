import 'package:baserow/baserow.dart';

void main() {
  // Create a new table builder with a UUID field
  final tableBuilder = TableBuilder('Users')
    ..withUUIDField('ID', required: true)
    ..withTextField('Name')
    ..withEmailField('Email');

  // Build the table configuration
  final tableConfig = tableBuilder.build();
  print(tableConfig);
}
