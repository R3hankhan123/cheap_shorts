import 'package:flutter/material.dart';

Widget categoryButton(String subCategory, String photo, String description) {
  return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.yellow,
          width: 2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Column(
              children: [
                Text(
                  subCategory,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow,
                  ),
                ),
                Center(
                  child: Text(
                    description,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(photo),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ));
}
