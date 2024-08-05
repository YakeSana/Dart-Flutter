import 'dart:math';
void main(){
  
   //1.
    const int raio = 5;
    double area = (pow(raio,2))* pi;
    print(area.round());

    //2.
    const a = 1,b = -3,c = 2;
    final double raiz1 = (-b + sqrt(pow(b,2)-4*a*c))/2*a;
    final double raiz2 = (-b - sqrt(pow(b,2)-4*a*c))/2*a;
    print(raiz1.toString() +','+ raiz2.toString());

    //3.
    const int raioEsfera = 4;
    double volumeEsfera = (4/3)*(pi*pow(raioEsfera,3)); 
    
    //4.
    final double val = 2 + 3 * 4 - (2*3) + pow(2,3);
    print(val);

    //5.
    const temp = 100;
    final celsius = (temp - 32)*5/9;
    print(celsius);
}

