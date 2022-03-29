void main() {

  
  triangulo( a, b, c){
    
 if(a + b > c && a + c > b && b + c > a){
        if(a == b && a == c)
            print("Equilatero");
        else
            if(a == b || a == c || b == c)
                print("Isosceles");
            else
                print("Escaleno");
    }
    else
        print("Os 3 lados NAO formam um trinagulo!");
    
  }
  
  triangulo(10,10,20);

}
