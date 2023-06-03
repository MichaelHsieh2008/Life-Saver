import 'package:flutter/material.dart';

class stepWidget extends StatelessWidget{
  final String title;
  final String subtitle;
  final String hasImage;
  final String imagePath;
  final String step;
  final int stepDistance;
  const stepWidget(this.title, this.subtitle, this.hasImage, this.imagePath, this.step, this.stepDistance);

  @override
  Widget build(BuildContext context) {
    return Container(
          alignment: Alignment.center,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 100,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 3
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                    ),
                    color: Colors.white),
                child: Column(
                  children: [
                    Text(
                      this.title.toString(),
                      style: TextStyle(fontSize: 40, color: Colors.black),
                    ),
                    Padding(padding: EdgeInsets.all(10)),
                    Text(
                      this.subtitle.toString(),
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    ((){
                      if(this.hasImage == "true"){
                        return Image(
                          image: AssetImage(this.imagePath),
                          width: 500,
                        );
                      } else {
                      return Padding(padding: EdgeInsets.all(0));
                      }
                    })(),
                  ],
                ),
              ),
              Positioned(
                  top: this.stepDistance.toDouble(),
                  left: -10,
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text(
                      this.step.toString(),
                      style: const TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ))
            ],
          ),
        );
  }

}