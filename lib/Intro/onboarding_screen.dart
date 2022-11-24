import 'package:flutter/material.dart';
import 'package:guitario/Auth/confirm_page.dart';
import 'package:guitario/Intro/slider.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    SliderPage(
        title: "Buy Top Music Instruments",
        description:
            "Smart, & Fashionable Collection best Music Guitar realistic isolated",
        image: "assets/images/slide1.png"),
    SliderPage(
        title: "Lets create beautiful music",
        description: "The Unique Design Guitar Music Collection",
        image: "assets/images/slide2.png"),
    SliderPage(
        title: "Lets make song for people",
        description: "Good guitar sound to make a good song to hear",
        image: "assets/images/slide3.png"),
  ];

  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            itemCount: _pages.length,
            onPageChanged: _onChanged,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(_pages.length, (int index) {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    height: 10,
                    width: (index == _currentPage) ? 30 : 10,
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: (index == _currentPage)
                            ? Colors.white
                            : Colors.white.withOpacity(0.5)),
                  );
                }),
              ),
              InkWell(
                onTap: () {
                  if (_currentPage != 2) {
                    _controller.nextPage(
                        duration: Duration(milliseconds: 800),
                        curve: Curves.easeInOutQuint);
                  } else {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => ConfirmPage()));
                  }
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  height: 70,
                  alignment: Alignment.center,
                  width: (_currentPage == (_pages.length - 1)) ? 200 : 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: (_currentPage == (_pages.length - 1))
                      ? Text(
                          "Get Started",
                          style: TextStyle(fontSize: 20),
                        )
                      : Icon(
                          Icons.navigate_next,
                          size: 50,
                        ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
