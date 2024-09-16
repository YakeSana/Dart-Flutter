class ImageModel {
  late String url;
  late String alt;

  ImageModel(this.url, this.alt);
  // ImageModel(String url, String alt){
  //     this.url = url;
  //     this.alt = alt;
  // }

  //construtor nomeado
  // ImageModel.fromJSON(Map<String,dynamic>mapa){
  //     url = mapa['photos'][0]['src']['medium'];
  //     alt = mapa['photos'][0]['alt'];
  // }

  ImageModel.fromJSON(Map<String, dynamic> mapa) :
    url = mapa['photos'][0]['src']['medium'],
    alt = mapa['photos'][0]['alt'];
  }

