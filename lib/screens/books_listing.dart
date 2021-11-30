import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BooksListing extends StatelessWidget {
  List bookData() {
    return [
      {
        'title': 'Eloquent JavaScript',
        'authors': ['Author 1', 'Author 2'],
        'coverImage':
            'https://books.google.co.ke/books/publisher/content?id=p1v6DwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE70ErebL3x18kKnfRRyBBVNc7ctNpb18Pq0A4EzJYLVOsGZkF-lZQ9Uxz4JiwLrpmikNevrRW-EWzlYWPfRgynGf5W_mVB9HOGClzWpCTyn5fScoLqi3P6TsDmWbPgNC0_cqhgy9'
      },
      {
        'title': 'Pragmatic Flutter',
        'authors': ['Author One'],
        'coverImage':
            'https://books.google.co.ke/books/publisher/content?id=p1v6DwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&imgtk=AFLRE70ErebL3x18kKnfRRyBBVNc7ctNpb18Pq0A4EzJYLVOsGZkF-lZQ9Uxz4JiwLrpmikNevrRW-EWzlYWPfRgynGf5W_mVB9HOGClzWpCTyn5fScoLqi3P6TsDmWbPgNC0_cqhgy9'
      },
    ];
  }

  final Function toggleTheme;
  const BooksListing(this.toggleTheme, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final booksListing = bookData();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Books Listing',
          style: TextStyle(fontFamily: 'NanumGothic'),
        ),
        centerTitle: true,
        leading: const Icon(Icons.home),
        actions: [
          IconButton(
            onPressed: () => toggleTheme(),
            icon: const Icon(Icons.brightness_medium),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Theme(
        data: ThemeData(
          cardColor: Colors.orange[50],
        ),
        child: ListView.builder(
          itemCount: booksListing.isEmpty ? 0 : booksListing.length,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5.0,
              margin: const EdgeInsets.all(10.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            booksListing[index]['title'],
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'NanumGothic',
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          booksListing[index]['authors'] != null
                              ? Text(
                                  'Author(s): ${booksListing[index]['authors'].join(", ")}',
                                  style: const TextStyle(
                                    fontSize: 15.0,
                                    color: Colors.grey,
                                    fontFamily: 'NanumGothic',
                                  ),
                                )
                              : const Text(''),
                        ],
                      ),
                    ),
                    booksListing[index]['coverImage'] != null
                        ? Image.network(
                            booksListing[index]['coverImage'],
                            fit: BoxFit.fill,
                          )
                        : Container(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
