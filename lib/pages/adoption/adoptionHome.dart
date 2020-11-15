import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapppetscare/theme/constant.dart';
import 'package:flutterapppetscare/widgets/dog_card.dart';
import 'package:flutterapppetscare/widgets/walk_card_dog.dart';


const double _fabDimension = 56.0;

class adoptionHome extends StatefulWidget {
  @override
  _adoptionHomeState createState() => _adoptionHomeState();

}

class _adoptionHomeState extends State<adoptionHome> {

  ContainerTransitionType _transitionType = ContainerTransitionType.fade;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

    body:ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              SizedBox(
                height: 10,
              ),

              DogCard(),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Recherche".toUpperCase(),style: TextStyle(fontSize: 17,),),
                  Text("See All")
                ],
              ),
              SizedBox(height: 20,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    WalkGroupCard(imgScr: "assets/images/card_dog_1.png",title: "Meet our lovely dogs walking with us",location: "Valencia, Spain",members: "8 memmbers",orgBy: "Laura",),
                    WalkGroupCard(imgScr: "assets/images/card_dog_2.png",title: "Meet our lovely dogs walking with us",location: "Valencia, Spain",members: "8 memmbers",orgBy: "Laura",),
                    // WalkGroupCard()
                  ],
                ),
              )


            ],
          ),
        ),

      ],
    ) ,
      floatingActionButton: OpenContainer(

        transitionType: _transitionType,
        openBuilder: (BuildContext context, VoidCallback _) {
          return const _DetailsPage(
            includeMarkAsDoneButton: false,
          );
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