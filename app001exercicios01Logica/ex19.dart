void main() {

  Pessoa joao = Pessoa("João",22);
  Pessoa matheus = Pessoa("Matheus",25);
  Pessoa romeu = Pessoa("Romeu",2);
  Pessoa beatriz = Pessoa("Beatriz",20);
  Pessoa hortencia = Pessoa("Hortencia",51);
  
final info = [joao,matheus,romeu,beatriz,hortencia];

  for(int i = 0; i<=info.length-1; i++){
    print("Nome: "+info[i].nome+", Idade: "+info[i].idade.toString());
    

  }

}
class Pessoa {
  String nome;
  int idade;
  
  Pessoa(this.nome,this.idade);
}

