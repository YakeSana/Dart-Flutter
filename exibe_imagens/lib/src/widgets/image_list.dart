import 'package:flutter/material.dart';
import '../../model/image_model.dart';

class ImageList extends StatelessWidget{
  List<ImageModel> imagens;
  ImageList(this.imagens);

  @override
  Widget build(BuildContext context){
    return ListView.builder(itemCount: imagens.length,
    itemBuilder: (BuildContext context, int index){
      return Column(
        children:[Image.network(imagens[index].url),
                  Text(imagens[index].alt)]);
    },);
  }
}