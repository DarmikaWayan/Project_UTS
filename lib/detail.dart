import 'data.dart';
import 'rating_bar.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Dvd dvd;

  Detail(this.dvd);

  @override
  Widget build(BuildContext context) {
    //app bar
    final appBar = AppBar(
      elevation: .5,
      title: Text('KEDAI DVD'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.home),
          onPressed: () {},
        )
      ],
    );

    final topLeft = Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Hero(
            tag: dvd.title,
            child: Material(
              elevation: 15.0,
              shadowColor: Colors.purple.shade900,
              child: Image(
                image: AssetImage(dvd.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        text('${dvd.pages} halaman', color: Colors.white30, size: 10)
      ],
    );

    ///detail top right
    final topRight = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text(dvd.title,
            size: 20, isBold: true,color: Colors.white70, padding: EdgeInsets.only(top: 100.0)),
        text(
          'oleh ${dvd.writer}',
          color: Colors.white30,
          size: 10,
          padding: EdgeInsets.only(top: 100, bottom: 100),
        ),
        Row(
          children: <Widget>[
            text(
              dvd.price,
              isBold: true,
              color: Colors.white70,
              padding: EdgeInsets.only(right: 8.0),
            ),
            RatingBar(rating: dvd.rating,color: Colors.white70)
          ],
        ),
        SizedBox(height: 32.0),
        Material(
          borderRadius: BorderRadius.circular(20.0),
          shadowColor: Colors.blue.shade200,
          elevation: 5.0,
          child: MaterialButton(
            onPressed: () {},
            minWidth: 150.0,
            color: Colors.orange,
            child: text('BELI', color: Colors.black, size: 13),
          ),
        )
      ],
    );

    final topContent = Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 4, child: topLeft),
          Flexible(flex: 3, child: topRight),
        ],
      ),
    );

    ///scrolling text description
    final bottomContent = Container(
      height: 150.0,
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Text(
          dvd.description,
          style: TextStyle(fontSize: 40.0, height: 1.5),
        ),
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: Column(
        children: <Widget>[topContent, bottomContent],
      ),
    );
  }

  ///create text widget
  text(String data,
          {Color color = Colors.black87,
          num size = 14,
          EdgeInsetsGeometry padding = EdgeInsets.zero,
          bool isBold = false}) =>
      Padding(
        padding: padding,
        child: Text(
          data,
          style: TextStyle(
              color: color,
              fontSize: size.toDouble(),
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      );
}
 