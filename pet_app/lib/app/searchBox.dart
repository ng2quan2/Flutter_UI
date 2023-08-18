// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:pet_app/common/common.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            width: size.width * 0.9,
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search for pets to adopt ...',
                  hintStyle: TextStyle(color: kTextColor, fontSize: 18),
                  prefixIcon: Icon(Icons.search, color: kTextColor,),
                  focusColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  suffixIcon: Icon(Icons.filter_alt, color: kTextColor,)
                ),
              ),
            ),
        ),
      ],
    );
  }
}
