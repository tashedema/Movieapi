import 'package:flutter/material.dart';
import 'package:movie_1/providers/movie_provider.dart';
import 'package:provider/provider.dart';


class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = Provider.of<MovieProvider>(context).categories;
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Categories',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Wrap(
            children: categories
                .map((cat) => GestureDetector(
              onTap: (){
                // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MoviesByCategoryScreen(category: cat,)));
              },
                  child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            )),
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        margin: const EdgeInsets.only(right: 4, bottom: 4),
                        child: Text(cat),
                      ),
                ))
                .toList(),
          )
        ],
      ),
    );
  }
}