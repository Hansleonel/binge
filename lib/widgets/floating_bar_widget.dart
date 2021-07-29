import 'package:flutter/material.dart';

class FloatingBarWidget extends StatefulWidget {
  FloatingBarWidget({Key? key}) : super(key: key);

  @override
  _FloatingBarWidgetState createState() => _FloatingBarWidgetState();
}

class _FloatingBarWidgetState extends State<FloatingBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 98, 86),
        borderRadius: BorderRadius.all(Radius.circular(26)),
      ),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.remove_red_eye_sharp,
                    color: Colors.white,
                    size: 30,
                  ))),
          Expanded(
              child: Stack(
            children: [
              Positioned(
                  bottom: 4,
                  left: (MediaQuery.of(context).size.width / 4) / 3,
                  child: Container(
                      height: 2,
                      width: (MediaQuery.of(context).size.width / 4) / 3,
                      color: Color.fromARGB(255, 253, 216, 46))),
              Align(
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.bookmark_sharp,
                      color: Colors.white,
                      size: 30,
                    )),
              ),
            ],
          )),
          Expanded(
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.home_sharp,
                    color: Colors.white,
                    size: 30,
                  ))),
          Expanded(
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person_sharp,
                    color: Colors.white,
                    size: 30,
                  ))),
        ],
      ),
    );
  }
}
