void main(){
  
 int test(int i){
   return 123;
 }
  
 int v1 = test(321);
  print(v1);
  
 123;
 int vt = 123;
  
  print(123);
  print(vt);
  
  // -- 익명함수는 변수 선언이 없음
  // 담아놓냐 담아놓지 않느냐 차이
  int v2 =((int i){return 123;})(123);
  print(v2);
  
  // 컴퓨팅적 사고
  // 알고리즘적 사고
  
  // * 토스트를 만드는 방법을 설명
  // 식빵, 토스트기, 계란, 소스, 접시, 후라이팬, 식용유, 뒤짚게 --> 재료 -> 변수 
  
  // 식빵을 토스트기에 2개를 넣는다 --> 반복문
  // 1분을 기다린다
  // 토스트기를 끈다
  // 토스트기를 빼서 접시에 담는다 -> 2개를 순차적으로 담는다 
  // 계란을 깨서 후라이팬에 넣는다 -> 일반적으로는 하나인 생각이 여러 행동이 내포
  // ... 
  // 소스를 바른다
  // 처음 짚은 빵인지 아닌지 체크 --> 조건문 
  // ...
  
  
  // 목표 - 클릭한 컨텐츠의 순번
  // 준비물 - 기존 컨텐츠들, 순번-이 없어도 체크 가능, 대상
  // -- 기존 컨텐츠들에는 이미 '순서' 라는게 존재해야한다
  // 행동 - 순번이 없는 상태니까 기존 컨텐츠들에서 대상의 순번을 찾음
  // 대상이 몇 번째인지 체크(조건문 if) 하는 행동 반복(for,while)
  
  
  List<int> contents = [1,2,3,4];
  int target = 3;
  
  int? result;
  
  for(int i =0; i < 4; i++){
    if(target == contents[i]){
      result = i;
      return;
    }
    else{
//       return; // -> 종료하면 안되니까 
    }
    
    print(result);
  }
  

 
