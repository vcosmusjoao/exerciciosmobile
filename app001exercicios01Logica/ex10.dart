void main() {

  double a = 15;
  double v0 = 20;
  double t = 10;
  
  double vFinal = (v0+a*t)*3.6;
  
  if(vFinal <= 40){
    print("Veiculo Muito Lento");
  }else if(vFinal >40 && vFinal<=60){
    print("Velocidade Permitida");
  }else if(vFinal>60 && vFinal<=80){
    print("Velocidade de Cruzeiro");
  }else if(vFinal>80 && vFinal<= 120){
    print("Veiculo Rápido");
  }else if(vFinal>120){
    print("Veiculo muito rapido");
  }
  
  
 
}
