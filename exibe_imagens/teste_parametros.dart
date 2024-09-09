void extremo(int n1,int n2,{int a =1,int b =2}){
  print(n1);
  print(a);
  print(b);
}

// void extremo({int n1 =1},int a){}

//posicional
void posicional(int n1,int n2){
  print(n1);
  print(n2);
}

//nomeado
void opcional({int? n}){
  print(n);
}

void main(){
  extremo(1,2,a:2,b:3);
  opcional(n: 1);
  opcional();
}