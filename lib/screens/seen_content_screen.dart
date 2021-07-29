import 'package:flutter/material.dart';
import 'package:binge/widgets/floating_bar_widget.dart';

String dbPath = "http://image.tmdb.org/t/p/w500/";
var posters = [
  "5bFK5d3mVTAvBCXi5NPWH0tYjKl.jpg",
  "qAZ0pzat24kLdO3o8ejmbLxyOac.jpg",
  "uHA5COgDzcxjpYSHHulrKVl6ByL.jpg",
  "5dExO5G2iaaTxYnLIFKLWofDzyI.jpg",
  "34nDCQZwaEvsy4CFO5hkGRFDCVU.jpg",
  "jTswp6KyDYKtvC52GbHagrZbGvD.jpg",
  "niw2AKHz6XmwiRMLWaoyAOAti0G.jpg",
  "7BCTdek5LFHglcgl7shsm7igJAH.jpg",
  "npgnoXFg4qvzMZFbIMLYrIZnxiv.jpg",
  "bOFaAXmWWXC3Rbv4u4uM9ZSzRXP.jpg",
  "M7SUK85sKjaStg4TKhlAVyGlz3.jpg",
  "rTh4K5uw9HypmpGslcKd4QfHl93.jpg",
  "rMoVOCw6DF3zC6hS76ZhQMWiXNX.jpg",
  "cycDz68DtTjJrDJ1fV8EBq2Xdpb.jpg",
  "rtMdtzywcAGOrF6t8fbxJBqpdcq.jpg",
  "zvUNFeTz0Sssb210wSiIiHRjA4W.jpg",
  "4q2hz2m8hubgvijz8Ez0T2Os2Yv.jpg",
  "uZkNbB8isWXHMDNoIbqXvmslBMC.jpg",
  "z8CExJekGrEThbpMXAmCFvvgoJR.jpg",
  "34BmdJkdvRweC3xJJFlOFQ2IbYc.jpg"
];

class SeenContent extends StatefulWidget {
  SeenContent({Key? key}) : super(key: key);

  @override
  _SeenContentState createState() => _SeenContentState();
}

class _SeenContentState extends State<SeenContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                    padding: EdgeInsets.only(
                  top: 28,
                )),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 18, left: 47)),
                    Container(
                      width: 47.0,
                      height: 47.0,
                      decoration: BoxDecoration(
                        color: const Color(0xff7c94b6),
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://robbievan10.github.io/images/profilepic.jpeg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                        border: Border.all(
                          color: Colors.black,
                          width: 2.0,
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 34, left: 10)),
                    Text(
                      "JORGE GUTIERREZ",
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600),
                    ),
                    Expanded(child: Container()),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 34, right: 10)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.more_vert))
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 13)),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.arrow_back))
                          ],
                        ),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "MI WATCHLIST",
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Container(),
                      flex: 1,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 12),
                          ),
                          Text(
                            "EN MI WATCHLIST",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.bookmark),
                              SizedBox(
                                width: 20,
                              ),
                              Text("0024"),
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.only(top: 6),
                        width: 150,
                        child: Text(
                          "WATCHLIST PERSONALIZADAS",
                          style: TextStyle(
                              height: 1.8,
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ))
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(204, 253, 216, 46),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(49),
                          topRight: Radius.circular(49)),
                    ),
                    child: GridView.count(
                      shrinkWrap: true,
                      primary: false,
                      padding:
                          const EdgeInsets.only(left: 24, right: 24, top: 40),
                      //crossAxisSpacing: 17,
                      //mainAxisSpacing: 20,
                      crossAxisCount: 4,
                      childAspectRatio: 0.66,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.network(dbPath + posters[0]),
                          //decoration: BoxDecoration(color: Colors.black),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.network(dbPath + posters[1]),
                          //decoration: BoxDecoration(color: Colors.black),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.network(dbPath + posters[2]),
                          //decoration: BoxDecoration(color: Colors.black),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.network(dbPath + posters[3]),
                          //decoration: BoxDecoration(color: Colors.black),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.network(dbPath + posters[4]),
                          //decoration: BoxDecoration(color: Colors.black),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.network(dbPath + posters[5]),
                          //decoration: BoxDecoration(color: Colors.black),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.network(dbPath + posters[6]),
                          //decoration: BoxDecoration(color: Colors.black),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.network(dbPath + posters[7]),
                          //decoration: BoxDecoration(color: Colors.black),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.network(dbPath + posters[8]),
                          //decoration: BoxDecoration(color: Colors.black),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.network(dbPath + posters[9]),
                          //decoration: BoxDecoration(color: Colors.black),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.network(dbPath + posters[10]),
                          //decoration: BoxDecoration(color: Colors.black),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.network(dbPath + posters[11]),
                          //decoration: BoxDecoration(color: Colors.black),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.network(dbPath + posters[12]),
                          //decoration: BoxDecoration(color: Colors.black),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.network(dbPath + posters[13]),
                          //decoration: BoxDecoration(color: Colors.black),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.network(dbPath + posters[14]),
                          //decoration: BoxDecoration(color: Colors.black),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.network(dbPath + posters[15]),
                          //decoration: BoxDecoration(color: Colors.black),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.network(dbPath + posters[16]),
                          //decoration: BoxDecoration(color: Colors.black),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.network(dbPath + posters[17]),
                          //decoration: BoxDecoration(color: Colors.black),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.network(dbPath + posters[18]),
                          //decoration: BoxDecoration(color: Colors.black),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.network(dbPath + posters[19]),
                          //decoration: BoxDecoration(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            child: FloatingBarWidget(),
          )
        ],
      ),
    );
  }
}
