void main() {

  Pessoa joao = Pessoa("João",22,"M");
  Pessoa matheus = Pessoa("Matheus",25,"M");
  Pessoa romeu = Pessoa("Romeu",2,"M");
  Pessoa beatriz = Pessoa("Beatriz",20,"F");
  Pessoa hortencia = Pessoa("Hortencia",51,"F");
  
final info = [joao,matheus,romeu,beatriz,hortencia];

  for(int i = 0; i<=info.length-1; i++){
    if(info[i].sexo == "F"){
    print("Nome: "+info[i].nome+" ,Sexo: "+info[i].sexo+", Idade: "+info[i].idade.toString());   
    }
   
    

  }

}
class Pessoa {
  String nome;
  int idade;
  String sexo;
  
  Pessoa(this.nome,this.idade,this.sexo);
}

