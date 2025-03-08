import 'package:flutter/material.dart';
import 'package:pharmacy_app/core/helper/app_styles.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Styles.textInputStyle(context),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 12),
        fillColor: Theme.of(context).colorScheme.tertiary,
        filled: true,
        hintText: 'LocaleKeys.HomeView_textSearch.tr(',
        hintStyle: Styles.titleLoginStyle(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        // suffixIcon: Padding(
        //   padding: const EdgeInsets.all(10.0),
        //   child: SvgPicture.asset(
        //     Assets.imagesFiltterSearch,
        //     width: 20,
        //     height: 20,
        //   ),
        // ),
        // prefixIcon: Padding(
        //   padding: const EdgeInsets.all(10.0),
        //   child: SvgPicture.asset(
        //     Assets.imagesSearchNormal,
        //     width: 20,
        //     height: 20,
        //   ),
        // ),
      ),
    );
  }
}
