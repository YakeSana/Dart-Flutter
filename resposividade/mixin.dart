mixin SayHiMixin {
  String dizerOla(){
    return "Olá";
  }
  void m(){
    print("DizerOla.m");
  }
}

mixin DizerNomeMixin {
  String dizerNome(){
    return "Rodrigo";
  }
  void m(){
    print("DizerNome.m");
  }
}

class OlaNome with DizerNomeMixin,SayHiMixin{
  void Dizer(){
    print('${dizerOla()}, ${dizerNome()}');
  }
}

void main(){
  final teste = OlaNome();
  teste.Dizer();
  teste.m();
}