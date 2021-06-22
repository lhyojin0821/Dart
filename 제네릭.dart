void main(){
  
 // 제네릭<T>
 // : '함수의' 구조를 잡을 때, 
 // : '결과(반환) 값' 이 변화해야할 때
  
 // 내부에서는 숫자 두개를 받아서 더한 다음 '어떤 타입이든' 반환
  
 
  T func<T>(int a, int b,  Function(int e) d){
   int c = a+b;
//     return c;
    return d(c); // return  (<int>(){ })(c);
  }
  
  print(func<int>(1,2, (int e){return e;} ));
  print(func<String>(1,2, (int e){return e.toString();} ));
  print(func<bool>(1,2, (int e){return e == 3 ? true : false;} ));
  
}
  
