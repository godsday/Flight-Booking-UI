import 'package:flutter/material.dart';

List <String>dropSort = [
  'Highest Price',
  'Medium Price',
  'Lowest Price'
];

List<DropdownMenuItem<String>> dropdownMenuItems =dropSort.map((String value) => DropdownMenuItem<String>(value: value,child: Text(value),)).toList();