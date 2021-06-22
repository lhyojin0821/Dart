void main(){
  
  Parent pa = new Parent(a:20, b: 30);
  pa.a;
  pa.b;
  pa.add();
  
  Child ch = new Child(a: 30,b: 40, c:40, d:60);
  ch.a;
  ch.b;
  ch.c;
  ch.d;
  print(ch.add());
  
   Parent pc = new Child(a:30,b:30,c:20,d:10);
  
  print(pc.a);
  pc.b;
  pc.add();
}

  print('-----------extends-----------------');
  
  Widget widget = new Widget(555,556);
  
  Container container = new Container(666, 667);
  
  // 컨테이너 생성하고 위젯의 내용 중 타입 이름이같은 변수 및 함수만 가져옴
  Widget w_container = new Container(777,667); // Widget - Container 
  
  // Container c_widget = new Widget(); // 사용 안됨
 
  print(widget.i); 
  print(widget.o);
  widget.pr();
  // widget.pr2(); // 사용 x 
  print(container.i); 
  container.pr();
  container.pr2();
  
  
  print(w_container.i); 
//   w_container.pr2(); //Widget에 pr2 함수가 없어서 사용 안됨 
  w_container.pr();
  
   print('------------&&&&&&&&&&&&&&&---------------');
   Idol seulgi = new Idol(name:'seulgi', group:'레드벨벳');
  
  print(seulgi.name);
  print(seulgi.group);
  seulgi.sayName();
  seulgi.sayGroup();
  print('-----------------------------');
  BoyGroup rm = new BoyGroup(name:'rm', group:'BTS');
  print(rm.name);
  print(rm.group);
  rm.sayGroup();
  rm.sayName();
  print('------------------------------');
  Idol gd = new BoyGroup(name:'GD', group:'빅뱅');
  print(gd.group);
  print(gd.name);
  gd.sayGroup();
  gd.sayName();
//   w_container.pr2(); 사용 x , 내부에는 구성되어있음 
  
  
//   container.i = 321;
//   widget.pr();
//   container.pr();
  
//   Design d = new Design(); // 사용 안됨
  
  print('-------------abstract,implements ');
  
  Widget2 widget2 = new Widget2();
  widget2.width; widget2.height; widget2.build();
  widget2.i;
  Design d_widget2 = new Widget2();
  d_widget2.build();
  //   d_widget2.i; 사용x 내부에는 구성이 되어있음
  
  print('----------&&&&&&&&&&----------------');
  
  Student student = new Student();
  student.age;
  student.name;
  student.sayName();
  student.sayAge();
  print(student.list);
  Person student2 = new Student();
  student2.age;
  student2.name;
  student2.sayName();
//   print(student.list); 내부에 구성은 되어있지만 사용 못함
  

  
  print('-------------mixin------------');
  
  Stateless stl1 = new Stateless();
  stl1.width; stl1.height; stl1.build();
  Design stl2 = new Stateless();
  stl2.build();
  
  
  
  M1 m1 = new M1();
  m1.i; 
  m1.pr();
  
  M2 m2 = new M2();
  m2.i; 
  m2.pr2();
  m2.a;
  m2.pr();
  
  M1 mm2 = new M2();
  
  mm2.i; 
  mm2.pr();
  
  
  
  
}
class Parent {
 int a = 0;
 int b = 0;
  
 Parent({required this.a, required this.b});
 
 int add (){
   return this.a * this. b;
 } 
  

}

class Child extends Parent{
  int c = 0;
  int d = 0;
  
  Child({required int a,required int b, required this.c, required this.d}):
  super(a :a,b:b );
  
  @override
  int add(){
    int result = super.add();
    return result + this.c * this.d;
    
  }
  
}

 //클래스, 다형성(타입이 여러개있는거)
 //: 묶음 / 양식 - 

// widget 최상위 개념

class Widget{
  
  Widget(this.i, this.o){
    print('CREATE - Widget');
  }
  
  
  int i = 123;
  int o = 456;
  void pr() => print(this.i);
  
}

class Container extends Widget {
  
//   Container(int i, int a) : super(i, a);
  Container(int i, int a):super(i,a){
    print('CREATE -- CONTAINER');
  } 
  
 

  
//   Container(this.i){
//     print('CREATE -- CONTAINER');
//   }
  
  
   // 덮어쓰기 오버라이딩 
  // int i = 444;
  // int i = ((){return .i + 444; })();
  // int f(){} -> f();
  
  // 덮어쓰기
  // 오버라이딩
  // @ 시스템으로 주석을 달아주는거, 코드를 볼 때 이해를 돕기 위해서
  @override 
  void pr(){
    this.i = super.i + 123;
    super.pr(); // print(this.i);
    return;
  }
  
  void pr2() => print (this.i * 2);
  
  
  // * 보유 중 내용
  //void pr() => print(this.i);
}


// Widget <- Container <- WD <- CO 



class Idol {
  String name;
  String group;
  
  Idol({required this.name, required this.group});
  
  void sayName(){
    print('저는 ${this.name} 입니다.');
  }
  void sayGroup(){
    print('저는 ${this.group} 소속 입니다.');
  }
}

class BoyGroup extends Idol {
  BoyGroup({required String name,required String group}):
  super(name:name,group: group);
  @override
  void sayGroup(){
    print('${super.group} 소속 ${super.name} 입니다.');
  }
  
}

// abstract 내용을 강제 함
// 정의 - 양식의 정의
abstract class Design{
  double width = 0;
  double height = 0;
  void build();
  
}

class Widget2 implements Design {
  double width = 100.0;
  double height = 100.0;
  void build(){
    print('Widget2: ${this.i}');
    print(this.width + this.height);
  }
  
  int i = 123;
  Widget2(){
    print(this.i);
  }
}

abstract class Person{
  String name = '';
  int age = 0;
  void sayName();
}

class Student implements Person{
  List<int> list = [1,2,3];
  String name = 'hyojin';
  int age = 33;
  void sayName(){
    print('제 이름은 $name 입니다.');
  }
  void sayAge(){
    print('저는 $age 입니다.');
  }
}

// ...
class Stateless extends Design {
  
  
  void build(){
  print(this.width + this.height + 999);   
  }
}

// MixIN : 섞어서 사용
// - 상하위 개념이 아님, 동위 개념임

class M1{
  int i = 0;
  void pr() => print(this.i);
}

class M2 with M1 {
  int a = 9;
  @override // 지양 
  void pr(){
    this.i = 999;
    print('M2 i : ${this.i}');
  }
  void pr2() => print(this.a);
}
