//Realizar la sucesión de Fibonacci de un número dado
void main() {
  int n = 10; 

  int a = 0;
  int b = 1;

  print('Sucesión de Fibonacci hasta $n términos:');

  for (int i = 0; i < n; i++) {
    print(a);
    int temp = a + b;
    a = b;
    b = temp;
  }
}
