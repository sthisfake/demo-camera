import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:io';
import 'package:path/path.dart' as path ;
import 'package:path_provider/path_provider.dart' as syspaths;

import 'package:image_picker/image_picker.dart';
class ImageInout extends StatefulWidget {
  

  @override
  State<ImageInout> createState() => _ImageInoutState();
}

class _ImageInoutState extends State<ImageInout> {
  var _storedImage;

  Future<void> _takePicture () async  {
    final picker = ImagePicker();
    final imageFile = await picker.getImage(source: ImageSource.camera ,
    maxWidth: 600);
  


  setState( () {

    if (imageFile != null){
      _storedImage = File(imageFile.path);
    }
    
    
  });

  // final appDir = syspaths.getApplicationDocumentsDirectory();
  // if(imageFile!= null){
  //   final fileName = path.basename(imageFile.path);
  //   final saveImage = await imageFile.copy('${appDir.path}/$fileName');
  // }
  
  // if( appDir != null){
      
  // }
  


  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
          ),
          child: _storedImage != null
              ? Image.file(
                  _storedImage,
                  fit: BoxFit.cover,
                  width: double.infinity,
                )
              : Text("no image taken" , textAlign: TextAlign.center,),
          alignment: Alignment.center,
        ),
        SizedBox(width : 10) ,

        Expanded(child: FlatButton.icon(
          icon: Icon(Icons.camera),
          label: Text('take picture' ,),
          textColor: Theme.of(context).primaryColor,
          onPressed:_takePicture,
        )),
      ],
    );
  }
}
