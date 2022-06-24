import 'package:flutter/material.dart';
import 'package:get/get.dart';

typedef OnSearchSubmit(String search);

class SearchField extends StatefulWidget {
  const SearchField({
    Key? key,
    required this.onSearchSubmit,
    this.defaultValue,
  }) : super(key: key);
  final OnSearchSubmit onSearchSubmit;
  final String? defaultValue;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textEditingController.text = widget.defaultValue ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          bottom: context.height * .025, top: context.height * .025),
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(25)),
      child: TextField(
        controller: textEditingController,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          fillColor: Colors.grey,
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 22),
          filled: true,
          hintText: "search".tr,
          prefixIcon: Icon(
            Icons.search_sharp,
            color: Colors.grey,
          ),
          border: const OutlineInputBorder(
            gapPadding: 1,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            borderSide: BorderSide.none,
          ),
        ),
        onSubmitted: (value) {
          if (widget.defaultValue == null) {
            textEditingController.clear();
          }
          widget.onSearchSubmit.call(value);
        },
      ),
    );
  }
}
