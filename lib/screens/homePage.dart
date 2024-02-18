import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
                items: [
                  // Replace the URLs with your image URLs
                  'assets/images/image.png',
                  'assets/images/image.png',
                  'assets/images/image.png',
                  'assets/images/image.png',
                  'assets/images/image.png',
                ].map((imageUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return GestureDetector(
                        onTap: () {
                          // Replace the YouTube link with your actual YouTube link
                          _launchYouTubeLink(context);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                              image: AssetImage(
                                  imageUrl), // Use AssetImage for local assets
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              Text(
                "Home Page",
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchYouTubeLink(BuildContext context) {
    // Replace 'https://www.youtube.com/' with your actual YouTube link
    final String youtubeLink = 'https://www.youtube.com/';
    // Use any method to open the link, here we use Navigator to push a WebView page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WebViewPage(url: youtubeLink),
      ),
    );
  }
}

// WebViewPage is a placeholder for a web view to display the YouTube link
class WebViewPage extends StatelessWidget {
  final String url;

  const WebViewPage({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('YouTube Video')),
      body: Center(
        child: Text('WebView to display YouTube video'),
      ),
    );
  }
}