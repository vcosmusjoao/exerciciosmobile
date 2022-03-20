void main() {

 double peso = 72;
 double altura = 1.72;
 String sexo = "F";
 var pesoIdeal = peso/(altura*altura);
  
  
  if(pesoIdeal<19 && sexo=="M"){
    print("ABAIXO DO PESO");
  }else if(pesoIdeal<20 && sexo=="F"){
    print("ABAIXO DO PESO");
  }else if(pesoIdeal>=19 && pesoIdeal<24 && sexo=="F"){
    print("PESO IDEAL");
  }else if(pesoIdeal >=20 && pesoIdeal <25 && sexo =="M"){
    print("PESO IDEAL");
  }else if(pesoIdeal>=24 && sexo=="F"){
    print("ACIMA DO PESO");
  }else if(pesoIdeal>=25){
    print("ACIMA DO PESO");
  }
  
}
