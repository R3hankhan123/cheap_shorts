import 'package:cheapshorts/pages/news_page.dart';
import 'package:cheapshorts/widgets/category_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String _selectedCategory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Cheapshorts',
            style: TextStyle(color: Colors.yellow),
          )),
          elevation: 0,
        ),
        body: ListView(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  _selectedCategory = 'science';
                });
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewsPage(category: _selectedCategory);
                }));
              },
              child: categoryButton(
                  "Science", "assets/science.png", "Latest Science News"),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  _selectedCategory = 'technology';
                });
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewsPage(category: _selectedCategory);
                }));
              },
              child: categoryButton(
                  "Technology", "assets/tech.jfif", "Latest Tech News"),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  _selectedCategory = 'entertainment';
                });
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewsPage(category: _selectedCategory);
                }));
              },
              child: categoryButton("Entertainment ",
                  "assets/entertainment.png", "Latest Entertainment  News"),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  _selectedCategory = 'business';
                });
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewsPage(category: _selectedCategory);
                }));
              },
              child: categoryButton(
                  "Business ", "assets/business.jfif", "Latest Business News"),
            ),
            const SizedBox(height: 20),
            InkWell(
                onTap: () {
                  setState(() {
                    _selectedCategory = 'health';
                  });
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NewsPage(category: _selectedCategory);
                  }));
                },
                child: categoryButton(
                    "Health", "assets/health.png", "Latest Health News")),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  _selectedCategory = 'sports';
                });
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewsPage(category: _selectedCategory);
                }));
              },
              child: categoryButton(
                  "Sports", "assets/sports.jfif", "Latest Sports  News"),
            ),
            const SizedBox(height: 20),
          ],
        ));
  }
}
