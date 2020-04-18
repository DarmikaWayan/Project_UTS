import 'data.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //app bar
    final appBar = AppBar(
      elevation: 20,
      leading: IconButton(
        icon: Icon(Icons.home),
        onPressed: () {},
      ),

      title: Text('KEDAI DVD'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ],
    );

    ///create dvd title hero
    createTile(Dvd dvd) => Hero(
          tag: dvd.title,
          child: Material(
            elevation: 100.0,
            shadowColor: Colors.black,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'detail/${dvd.title}');
              },
              child: Image(
                image: AssetImage(dvd.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );

    ///create dvd grid tiles
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(10.0),
          sliver: SliverGrid.count(
            childAspectRatio: 2 / 3,
            crossAxisCount: 2,
            mainAxisSpacing: 40.0,
            crossAxisSpacing: 20.0,
            children: dvds.map((dvd) => createTile(dvd)).toList(),
          ),
        )
      ],
    );

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar,
      body: grid,
    );
  }
}