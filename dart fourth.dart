void main() {
  
 // 반복문
 // - for문 / - while
  
//  for(//조건:횟수){
//    //반복 동작 수행 내용
//  }
  
  for(int i=0; i<10; i++){
    print(i); //print를 반복
  }
  
  // List에서 많이 사용 됨 - index(순번), length, 시작은 0부터 
  // -- 특정 반복 로직을 수행만 하는 경우 
  // -- 특정 반복로직을 통해서 새로운 List를 만들 경우 
  
  List<int> li = [1,2,3,4];
  
  // ** 반복로직을 수행만 하는 경우
  for(int i = 0; i<li.length; i++){
    print('I: $i');
  }
  
  List<int> newList = [];
  for(int i=0; i<li.length; i++){
    newList.add(li[i] * li[i]);
    //for(){}
  }
  
  print(newList);
  
  String s1 = 'S111112';
  print(s1.length);
  print(s1[0]);
  
  
  // - while
  // while(비교연산자를 통한 조건 True/false){
  //      반복로직....
  //   }
  
  // 조건문
  // 조건에 따른 로직을 실행할때 사용
  //   if(비교 연산자를 통한 조건 True/False){
  //   조건에 따른 실행 내용
  // }
  
  
  if(s1.length == 7){
    print('S1 은 7!');
    //return; // * main을 종료
    
  } else if(s1.length == 8){
    print('*????');
  }
    else {
    print('s1은 7 아님');
  }
  
  print('조건문 종료---');
  
  int funcIf(int x){
    int y;
    if(x <= 5){
//       return 1234;
      y = 1234;
    } else {
//       return 56789;
      y = 56789;
    }
    return y;
  }
  print(funcIf(6));
  
  int funcInt2(int x){
    if(x < 5) return 1234;
    
    // else if(){}
    if(x > 5 || x <10) return 56789;
    
    print('...');
    return 1000000;
  
  }
  print(funcInt2(6));
  
  Color color = new Color(); // 인스턴스
  Color color2 = new Color.RGBO(); // 인스턴스 
  
}

class Color{
  Color();
  Color.RGBO();
  aa(){}
  static from(){}
}

