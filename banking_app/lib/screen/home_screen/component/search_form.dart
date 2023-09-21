import 'package:flutter/material.dart';

import '../../../constants.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Form(
        child: TextFormField(
          style: const TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.w600,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(
              left: 20,
              bottom: 20,
              top: 20,
              right: 0,
            ),
            filled: true,
            fillColor: const Color.fromARGB(255, 79, 79, 79),
            hintText: "Search keyword",
            hintStyle: const TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.w500,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
            suffixIcon: const Padding(
              padding: EdgeInsets.only(
                right: 20,
                left: 0,
                top: 0,
                bottom: 0,
              ),
              child: Icon(
                Icons.search,
                color: Colors.white70,
                size: 36,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
