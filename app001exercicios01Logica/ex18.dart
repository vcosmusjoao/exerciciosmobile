void main() {
  
  final n = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
  final c = 2 ;
  print(n);
  
  for (int i = 0; i <= n.length-1; i++) {
    n[i] = n[i]*c;
  }
  print(n);
}