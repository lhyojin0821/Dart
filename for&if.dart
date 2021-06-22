void main() {
  
 // 반복문
 // - for문 / - while
  
//  for(//조건:횟수){
//    //반복 동작 수행 내용
//  }
  
  print('-------------for--------------');
  
  for(int i=0; i<10; i++){
    print(i); //print를 반복
  }
  print('--------------------------------');
  
  for(int i=15; i>10; i--){
    print(i);
  }
  
  print('--------------for,list-------------');
  // List에서 많이 사용 됨 - index(순번), length, 시작은 0부터 
  // -- 특정 반복 로직을 수행만 하는 경우 
  // -- 특정 반복로직을 통해서 새로운 List를 만들 경우 
  
  List<int> li = [1,2,3,4];
  List<int> li2 = [8,9,0,3,6,7];
  
  // ** 반복로직을 수행만 하는 경우
  for(int i = 0; i<li.length; i++){
    print('I: $i');
  }
  print('-------------------------');
  for(int i2 = 0; i2<li2.length; i2++){
    print('I2 :$i2');
  }
  
  List<int> newList = [];
  for(int i=0; i<li.length; i++){
    newList.add(li[i] * li[i]);
    //for(){}
  }
  
    print(newList);
  List<int> newList2 = [];
  for(int i2=0; i2<li2.length; i2++){
    newList2.add(li2[i2] + li2[i2]);
  }
  print(newList2);

  
  print('----------------String---------------');
  
  String s1 = 'S111112';
  print(s1.length);
  print(s1[0]);
  
  
  // - while
  // while(비교연산자를 통한 조건 True/false){
  //      반복로직....
  //   }
  
  
  print('-------------if----------------');
  
  // 조건문
  // 조건에 따른 로직을 실행할때 사용
  //   if(비교 연산자를 통한 조건 True/False){
  //   조건에 따른 실행 내용
  // }
  List<int> int2 = [1,5,7,8,9];
  
  if(int2.length == 4){
    print('int2 : 4');
  } else if(int2.length == 5){
    print('int2: 5');
  } else {
    print('int2: x');
  }
  print('조건문 종료');
  
  print('----------------');
  int func1(int a){
    int b=0;
    
    if(a <= 5){
//       return 123;
      b = 123;
    } else {
//       return 456;
      b = 456;
    }
    return b;
  }
  print(func1(7));
  

 
  print('----------------------');
  
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













