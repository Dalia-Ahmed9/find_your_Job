import 'package:flutter/material.dart';

class DropDownMenu<T> extends StatelessWidget {
  const DropDownMenu({
    super.key,
    required this.itemsList,
    required this.selectedValue,
    required this.itemLabel,
    this.onChanged,
    //required this.label,
  });
  final List<String?> itemsList;
  final String selectedValue;
  final String Function(String) itemLabel;
  final void Function(String?)? onChanged;
  //final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButtonFormField<String>(
        padding: EdgeInsets.symmetric(horizontal: 15),
        isExpanded: true,
        dropdownColor: Colors.white,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.deepOrange),
          ),
          //labelText: label,
          contentPadding: const EdgeInsets.symmetric(vertical: 16),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        ),
        value: selectedValue,
        items:
            itemsList.map((item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(
                  itemLabel(item!),
                  style: TextStyle(color: Colors.grey),
                ),
              );
            }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
