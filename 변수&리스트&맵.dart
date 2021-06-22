void main(){
  
  List<List<List<int>>> listInt = [[[1,2,3],[1,2,3,4,5]]];
  print(listInt[0][1][3]);
  
  print('---------------------');
  
  List<int> testList = [1,1,3,3,5,7,8];
  
  print(testList.toSet().toList());
  
  
  testList.add(20);
  print(testList);
  
  print('---------------------');
  Map<String, dynamic> mapList = {'name':['hyojin','limhyojin','hyojine'],
                                 'age':14,
                                 };
  
  print(mapList['name']);
  print(mapList.keys);
  print(mapList.values);
  print(mapList['name'][1]);
  mapList.addAll({'group':'그룹'});
  print(mapList);
  
  print('--------------------------------------');
  // 타입
  // - 숫자 num 
  num n1 = 1;
  num n2 = 3.14;
  n1 = 1.2;
  n2 = 3;
  
  
  
  // - 정수 int
  int i1 = 123;
  // int i2 = 123.3; // x
  
  
  // - 소수 double
  double d1 = 22.0;
  double d2 = 22; // 사용가능하지만 소수점까지 표현해주는게 좋음
  
  
  // - 문자(열) String -> 구분해주면 좋음
  String s1 = 'd';
  String s2 = "dddddddd";
  
  // - 참거짓 bool 
  bool b1 = true;
  bool b2 = false;
  bool b3 = !true; // => false
  bool b4 = !false; // => true
  
  // - 배열(집합) List
  // - 배열(집합) - 요소들의 중복을 허용하지 않는 Set
  // * 수학 -> 집함 개념
  // 쓰는 이유 목적(용도)이 같은 묶음
  List<dynamic> l1 = [1,'2',false, [1,2],[[false],[true]]];
  // -- 순서가 있음 -> 길이 / 반복 
  Set<dynamic> set1 = {1,1,1,2, false, false, [],[1,2,3]};
  // -- 중복을 지우기때문에 순서를 확정적으로 쓸 수 없음
  print(set1);
  
  l1.toSet().toList();
  set1.toList().toSet().toList();
  l1[0]; l1[2]; // index : 0 부터 출발

  
  // - 매핑 Map
  // 값을 순서 대신에 이름을 붙여서 의미 부여
  Map<String, dynamic> map = {'keys' : 1, 'b' : false, 'c':[], 'm':{} };
  map['b']; map['c'];
  
  // -----<요소의 타입을 강제>
  List<int> li3= [1,2,3,4];
  Set<int> set3={1,2,3};
  Map<String, int> mp2 = {'keyString': 123};
  
  li3.addAll([6,7,8]);
  
  
  
  // - 빈 void
  // * ClassName
}
