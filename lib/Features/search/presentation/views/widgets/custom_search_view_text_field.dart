import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchViewTextField extends StatelessWidget {
  const CustomSearchViewTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        suffixIcon: Opacity(
          opacity: 0.8,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white.withOpacity(0.8),
              size: 22,
            ),
          ),
        ),
        enabledBorder: oulineBorderTextField(),
        focusedBorder: oulineBorderTextField(),
      ),
    );
  }

  OutlineInputBorder oulineBorderTextField() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
