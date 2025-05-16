import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 120,
            padding: EdgeInsets.only(top: 50, right: 20, left: 20, bottom: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[200]),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: "Search",
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.camera_alt,
                  color: Colors.grey[800],
                  size: 30,
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          "Stories",
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              letterSpacing: 1.2),
                        ),
                        Text("See Archive"),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          makeStory(
                              storyImage:
                                  'https://github.com/Emilio-Renteria-1093/CompuTelNet_imagenes_app_flutter/blob/main/descarga%20(Asus-producto).jpeg?raw=true',
                              userImage:
                                  'https://github.com/Emilio-Renteria-1093/CompuTelNet_imagenes_app_flutter/blob/main/descarga%20(1).jpeg?raw=true',
                              userName: 'Asus'),
                          makeStory(
                              storyImage:
                                  'https://github.com/Emilio-Renteria-1093/CompuTelNet_imagenes_app_flutter/blob/main/descarga%20(razer-producto).jpeg?raw=true',
                              userImage:
                                  'https://github.com/Emilio-Renteria-1093/CompuTelNet_imagenes_app_flutter/blob/main/descarga%20(2).jpeg?raw=true',
                              userName: 'Razer'),
                          makeStory(
                              storyImage:
                                  'https://github.com/Emilio-Renteria-1093/CompuTelNet_imagenes_app_flutter/blob/main/descarga%20(DEll-producto).jpeg?raw=true',
                              userImage:
                                  'https://github.com/Emilio-Renteria-1093/CompuTelNet_imagenes_app_flutter/blob/main/descarga%20(dell).png?raw=true',
                              userName: 'Dell'),
                          makeStory(
                              storyImage:
                                  'https://github.com/Emilio-Renteria-1093/CompuTelNet_imagenes_app_flutter/blob/main/descarga%20(pan-producto).jpeg?raw=true',
                              userImage:
                                  'https://github.com/Emilio-Renteria-1093/CompuTelNet_imagenes_app_flutter/blob/main/descarga%20(pan).png?raw=true',
                              userName: 'Panduit'),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    makeFeed(
                        userName: 'CompuTelNet',
                        userImage:
                            'https://github.com/Emilio-Renteria-1093/CompuTelNet_imagenes_app_flutter/blob/main/ChatGPT%20Image%2016%20may%202025,%2001_02_55.png?raw=true',
                        feedTime: '1 hr ago',
                        feedText:
                            'Descubre nuestros nuevos productos en  nuetro catalogo, son lo mas nuevo y mejor en tecnologia!',
                        feedImage:
                            'https://github.com/Emilio-Renteria-1093/CompuTelNet_imagenes_app_flutter/blob/main/image.png?raw=true'),
                    makeFeed(
                        userName: 'CompuTelNet',
                        userImage:
                            'https://github.com/Emilio-Renteria-1093/CompuTelNet_imagenes_app_flutter/blob/main/ChatGPT%20Image%2016%20may%202025,%2001_02_55.png?raw=true',
                        feedTime: '3 mins ago',
                        feedText:
                            "Si no sabes donde encontrar a alguien que te ayude con la instalacion de algun producto electronico, nosotros te podedemos ayudar a instalarlo como tambien a darle servicio y mantenimiento a tus biejos dispositivos.",
                        feedImage: ''),
                    makeFeed(
                        userName: 'CompuTelNet',
                        userImage:
                            'https://github.com/Emilio-Renteria-1093/CompuTelNet_imagenes_app_flutter/blob/main/ChatGPT%20Image%2016%20may%202025,%2001_02_55.png?raw=true',
                        feedTime: '3 mins ago',
                        feedText:
                            "Encuentra lo mejor para poder tener tu casa con la mejor tecnologia para estar siempre conectado.",
                        feedImage:
                            'https://raw.githubusercontent.com/Emilio-Renteria-1093/CompuTelNet_imagenes_app_flutter/refs/heads/main/ChatGPT%20Image%2029%20abr%202025%2C%2022_24_33%201.png'),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget makeStory(
      {required String storyImage,
      required String userImage,
      required String userName}) {
    bool isNetworkStory = storyImage.startsWith('http');
    bool isNetworkUser = userImage.startsWith('http');

    return AspectRatio(
      aspectRatio: 1.6 / 2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: isNetworkStory
                ? NetworkImage(storyImage)
                : AssetImage(storyImage) as ImageProvider,
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                    image: DecorationImage(
                        image: isNetworkUser
                            ? NetworkImage(userImage)
                            : AssetImage(userImage) as ImageProvider,
                        fit: BoxFit.cover)),
              ),
              Text(
                userName,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({
    required String userName,
    required String userImage,
    required String feedTime,
    required String feedText,
    required String feedImage,
  }) {
    bool isNetworkUser = userImage.startsWith('http');
    bool isNetworkFeed = feedImage.startsWith('http');

    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: isNetworkUser
                                ? NetworkImage(userImage)
                                : AssetImage(userImage) as ImageProvider,
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        userName,
                        style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                      SizedBox(height: 3),
                      Text(feedTime,
                          style: TextStyle(fontSize: 15, color: Colors.grey)),
                    ],
                  )
                ],
              ),
              IconButton(
                icon: Icon(Icons.more_horiz, size: 30, color: Colors.grey[600]),
                onPressed: () {},
              )
            ],
          ),
          SizedBox(height: 20),
          Text(
            feedText,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey[800],
              height: 1.5,
              letterSpacing: .7,
            ),
          ),
          SizedBox(height: 20),
          feedImage != ''
              ? Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: isNetworkFeed
                          ? NetworkImage(feedImage)
                          : AssetImage(feedImage) as ImageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : Container(),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  makeLike(),
                  Transform.translate(offset: Offset(-5, 0), child: makeLove()),
                  SizedBox(width: 5),
                  Text("2.5K",
                      style: TextStyle(fontSize: 15, color: Colors.grey[800]))
                ],
              ),
              Text("400 Comments",
                  style: TextStyle(fontSize: 13, color: Colors.grey[800]))
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          )
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
      child: Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white),
      ),
    );
  }

  Widget makeLikeButton({required bool isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.thumb_up,
              color: isActive ? Colors.blue : Colors.grey,
              size: 18,
            ),
            SizedBox(width: 5),
            Text("Like",
                style: TextStyle(color: isActive ? Colors.blue : Colors.grey))
          ],
        ),
      ),
    );
  }

  Widget makeCommentButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.chat, color: Colors.grey, size: 18),
            SizedBox(width: 5),
            Text("Comment", style: TextStyle(color: Colors.grey))
          ],
        ),
      ),
    );
  }

  Widget makeShareButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.share, color: Colors.grey, size: 18),
            SizedBox(width: 5),
            Text("Share", style: TextStyle(color: Colors.grey))
          ],
        ),
      ),
    );
  }
}
