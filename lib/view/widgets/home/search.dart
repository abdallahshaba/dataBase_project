
import 'package:e_commerce_app14/core/constant/colorsStyle.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return      Container(
      margin: const EdgeInsets.symmetric( vertical: 10),
      padding: const EdgeInsets.symmetric( vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          const Icon(Icons.search, color: Colors.grey, size: 25),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration:  InputDecoration(
                hintText: "Search",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 16),
                border: InputBorder.none,
              ),
              cursorColor: AppColors.main,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.main,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.tune,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}