import 'package:flutter/material.dart';
import 'package:news_api_flutter_package/model/article.dart';
import 'package:news_api_flutter_package/news_api_flutter_package.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key, required this.category}) : super(key: key);
  final String category;
  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  final NewsAPI _newsAPI = NewsAPI("46b9cb64f6364d15a50d9525246dcaa8");
  final spinkit = const SpinKitSpinningLines(
    color: Colors.yellow,
    size: 150.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Article>>(
        future:
            _newsAPI.getTopHeadlines(country: "in", category: widget.category),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return PageView.builder(
                itemCount: snapshot.data!.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: FittedBox(
                            fit: BoxFit.fill,
                            child: Image.network(
                              snapshot.data![index].urlToImage.toString(),
                              fit: BoxFit.fill,
                            )),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              snapshot.data![index].title.toString(),
                              style: const TextStyle(fontSize: 22),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          snapshot.data![index].content.toString(),
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      )
                    ],
                  );
                });
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          } else {
            return Container(
              child: spinkit,
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.yellow,
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
