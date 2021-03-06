import 'package:flutter/material.dart';
import 'package:pics/models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      },
    );
  }

  Widget buildImage(ImageModel image) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.redAccent,
          width: 8.0,
        ),
      ),
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Image.network(image.url),
          Padding(
            padding: const EdgeInsets.only(
              top: 30.0,
            ),
            child: Text(
              image.title,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
