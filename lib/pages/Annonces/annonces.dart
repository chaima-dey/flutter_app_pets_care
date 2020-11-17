import 'package:flutter/material.dart';
import 'package:flutterapppetscare/pages/Annonces/addAnnonce.dart';
import 'package:flutterapppetscare/pages/myPets/src/open_container.dart';
import 'package:flutterapppetscare/theme/constant.dart';
import 'package:tiled_tab_indicator/tiled_tab_indicator.dart';



const double _fabDimension = 56.0;

class annonces extends StatefulWidget {
  @override
  _AnnoncesState createState() => _AnnoncesState();

}

class _AnnoncesState extends State<annonces> {

  ContainerTransitionType _transitionType = ContainerTransitionType.fade;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,

          bottom: TabBar(
            labelStyle: TextStyle(fontWeight: FontWeight.w700),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.black26,
            indicator: TiledTabIndicator(
              indicatorHeight: 5,
              colors: [
                Color(0xFFBC90BC),
                Color(0xFFD1A1D1),
                Color(0xFFD6BCD6),
                Color(0xFFFAF5FA),
              ],
              style: TiledIndicatorStyle.normal,
            ),
            tabs: [
              Tab(text: "All"),
              Tab(text: "Lost"),
              Tab(text: "Found"),
            ],
          ),
        ),
        body: TabBarView(children: [
          Center(child: Text("Home tab")),
          Center(child: Text("Info tab")),
          Center(child: Text("Data tab")),
        ]),
        floatingActionButton: OpenContainer(

          transitionType: _transitionType,
          openBuilder: (BuildContext context, VoidCallback _) {
            return  addAnnoncePage();
          },
          closedElevation: 6.0,
          closedShape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(_fabDimension / 2),
            ),
          ),
          closedColor: primary,
          closedBuilder: (BuildContext context, VoidCallback openContainer) {
            return SizedBox(
              height: _fabDimension,
              width: _fabDimension,
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),




      ),
    );
  }



}


class _OpenContainerWrapper extends StatelessWidget {
  const _OpenContainerWrapper({
    this.closedBuilder,
    this.transitionType,
    this.onClosed,
  });

  final OpenContainerBuilder closedBuilder;
  final ContainerTransitionType transitionType;
  final ClosedCallback<bool> onClosed;

  @override
  Widget build(BuildContext context) {
    return OpenContainer<bool>(
      transitionType: transitionType,
      openBuilder: (BuildContext context, VoidCallback _) {
        return const _DetailsPage();
      },
      onClosed: onClosed,
      tappable: false,
      closedBuilder: closedBuilder,
    );
  }
}



class _ExampleSingleTile extends StatelessWidget {
  const _ExampleSingleTile({this.openContainer});

  final VoidCallback openContainer;

  @override
  Widget build(BuildContext context) {
    const double height = 100.0;

    return _InkWellOverlay(
      openContainer: openContainer,
      height: height,
      child: Row(
        children: <Widget>[
          Container(
            color: Colors.black38,
            height: height,
            width: height,
            child: Center(
              child: Image.asset(
                'assets/placeholder_image.png',
                width: 60,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Title',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  const SizedBox(height: 8),
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur '
                          'adipiscing elit,',
                      style: Theme.of(context).textTheme.caption),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InkWellOverlay extends StatelessWidget {
  const _InkWellOverlay({
    this.openContainer,
    this.width,
    this.height,
    this.child,
  });

  final VoidCallback openContainer;
  final double width;
  final double height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: InkWell(
        onTap: openContainer,
        child: child,
      ),
    );
  }
}

class _DetailsPage extends StatelessWidget {
  const _DetailsPage({this.includeMarkAsDoneButton = true});

  final bool includeMarkAsDoneButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details page'),
        actions: <Widget>[
          if (includeMarkAsDoneButton)
            IconButton(
              icon: const Icon(Icons.done),
              onPressed: () => Navigator.pop(context, true),
              tooltip: 'Mark as done',
            )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.black38,
            height: 250,
            child: Padding(
              padding: const EdgeInsets.all(70.0),
              child: Image.asset(
                'assets/placeholder_image.png',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Title',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Colors.black54,
                    fontSize: 30.0,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "cc",
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                    color: Colors.black54,
                    height: 1.5,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

