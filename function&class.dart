void main (){

print('---------------------변수----------------'); // * 변수 // 값의 타입 변수명 = 값; int a = 1; // 초기화(값 넣었을때) / 선언 // 전역변수 List a1 = [1,2,3,4,5];

a = 2; // 할당 / 재할당 / a == null 초기화

a1 = [6,7,8,9];

print(a1);

print(a);

// 변수 사용 하는 이유 // 값을 저장해서 어디서든 쓰고 싶을때

a = 1; // 사용하는 값을 다시 쓰기 위해서 // 라벨링,

print(a);

// 지역 변수 & 전역 변수

// 코드에는 실행 범위가 있음 { }로 나타냄 // 함수나 클래스의 {}

// print(v);

{ int v = 22; // 지역 변수 print(v); print(a);// 전역변수 // 아직 내용이 남아있으니까 사용가능 print(a1); { int b = 3; // 지역 변수 print(a); // 전역 변수 print(v);// 전역 변수 print(b); print(a1); } //a,v 사용 가능 } // 내용 사라짐

// print(v); // 사라져서 안됨

print(a); print(a1); int b = 4; List b1 = [1,2,3,4,5];

a = b; // 4 a1 = b1; // [1,2,3,4,5] a = 123; // 123 a1 = [1,3,5,7,9]; print(a1); print(b1);

print(a); // 123 print(b); // 4

// 함수 // 반환 값의 타입 함수명(...){...로직} // 실행 범위 // 반환 값의 타입 함수명(....)=> 값 / 식 ; // // 함수의 선언부, 생성부

print('-------------------함수----------------------');

int func(){ return 123; } List func11(){ return [1,2,3]; }

int funcA()=> 123; List func12() => [1,2,3]; // 함수명(...); // return 000; print('func: ${func()}'); print('func11: ${func11()}'); print('func12: ${func12()}');

print('funcA: ${funcA()}');

// 함수 사용 이유 // - 반복되는 내용들을 묶어서 쓰기 위해서 // - 공식처럼 만들때

// ** 지역 전역 + 함수

int func2(){

return a+1;
}

int func22(){ return a * 5; }

print('-------func2------'); a = 321; print('func2: ${func2()}');

a = 20; print('func22: ${func22()}');

a= 4444; print('func2: ${func2()}');

// 함수에는 최대한 전역변수를 가져오지 않는게 좋음 (독립성을 위해서)

print('--------func3-----------');

int func3(){ int a = 444; // 한번만 함수를 사용할 때 return a + 1; }

print('--------func4--------');

int func4(int a){ return a + 2; } int func44(int a){ return a * 8; }

print('func4: ${func4(123)}'); print('func4: ${func4(444)}'); print('func44: ${func44(20)}');

print('---------func5---------');

int func5(int a, int b){ return a+3; } int func55(int a, int b){ return a * 2 + b; } print('func5: ${func5(3,5)}'); // (1) 인자를 반드시 입력 // (2) 순서를 지켜야 함

print('func55: ${func55(3,5)}'); // 네이밍 옵션

print('----------func6-----------'); int func6({int a = 0, int b = 0}){ return a+b; } int func66({int a = 0, int b = 0, int c = 0}){ return a+b*c; } print('func6:${func6(b:2, a:1)}'); print('func66:${func66(a:2,c:3,b:4)}'); // (1) 기본값이 있어서 안써도 됨 // (2) 순서 의존하지 않음, 인자이름에 값을 직접 입력

print('-------------func7----------');

int func7(int a, int z, {int b5 = 0, int c = 0}){ print(b5); return a + a ; } int func77(int w, {int a = 0, int d = 0, int p = 0} ){ return a+d*p-w; }

print('func7: ${func7(2,2, b5:123, c:3)}'); print('func7: ${func7(2,2, c:123, b5:3)}'); print('func77: ${func77(2, a:123, d:3, p:5)}');

print('-----------func8------------'); // required

int func8({required int a, required int b}){

return a+b+1;
}

int func88({required int a, required int b, required int c, int d =0 }){ return a+b*c; }

print('func8: ${func8(b:1, a:4)}'); // 6 - int 값 print('func88: ${func88(b:1, a:4, c:5)}');

int func8Value = func8(b:4, a:2); print(func8Value);

int func88Value = func88(b:1, a:4, c:5); print(func88Value);

print('${func8Value * func88Value}');

print('-----------instance-------------');

My my = new My(); new My();

print(my); print( new My());

print(my.i); // 0 new My().i;

my.i = 123; new My().i = 123;

print(my.i);

print(my.i-1);

my.i = 123; my.a = 321; my.b = 444;

Ch ch = new Ch(i:1,b:3); ch.i; ch.a; ch.b;

Ch ch2 = new Ch.two(i:1, a:2); ch2.i; ch2.a; ch2.b;

Ch ch3 = new Ch.list(li:[1,2,3,4,5,6,7,8,9]);

ch.pr(); ch2.pr(); ch3.pr();

My myC = new My(); myC.ch = new Ch(i:1,a:2, b:2);

print(myC.i); print(myC.a); print(myC.b); print(myC.ch?.i); print(myC.ch?.a ?? 'NULLNULL'); print(myC.ch!.b); // 지양 myC.ch?.pr();

print('-----------기본생성자------------');

Language lang = new Language(name:'hyojin', language: 'dart'); print(lang.name); print(lang.language); lang.sayName(); print('----------------이름있는 생성자'); Language lang2 = new Language.ee(language: 'dart',name:'hyojin'); print(lang2.name); print(lang2.language); lang2.sayName();

print('---------&&&&&&&&&&&&_-----------');

Language1 myLa = new Language1(); myLa.la = new Language(name:'hyojin', language: 'dart');

print(myLa.name); print(myLa.language); print(myLa.la?.name); print(myLa.la?.language); myLa.la?.sayName(); print('--------------^^^^^^^^^^^_-----------------------');

Language myLa2 = new Language.fromMap({
'name': 'hyojin',
 'language':'dart' 
}); myLa2.sayName();

} // 중괄호 닫혔을때 내용이 사라짐

// 클래스 생성은 외부에서(함수 밖) // class 클래스명{} // 왜쓰는가? // - 변수랑 함수를 묶어서 씀, 응용해서 쓸 수 있음 // - class 관계, 묶음 구성 - 의미 객체지향 OOP // . 표기법

class My{ int i = 0; int a = 0; int b = 0;

Ch? ch;

}

class Ch{ int i = 0; int a = 0; int b = 0;

// 기본 생성자
// Ch(int i, int a, int b){ // this.i = i; // this.a = a; // this.b = b; // // return x // // return 자기자신으로 내부에서 고정되어있음 // }

// Ch(this.i, this.a, this.b);

Ch({required this.i, this.a=0,this.b=0});

// 이름있는 생성자

Ch.two({required this.i, required this.a, this.b=0});

Ch.list({required List li}){ this.i = li[0]; this.a = li[1]; this.b = li[2]; }

void pr(){ print(this.i+this.a+this.b); } }

class Language1{ String language = 'dart'; String name = 'hyojin';

Language? la;

}

class Language { String language; String name;

Language ({required this.language ,required this.name}); Language.ee({required this.language ,required this.name}); Language.fromMap(Map zz): this.name = zz['name'], this.language = zz['language'];

void sayName(){ print('저는 ${this.name} 입니다. ${this.language} 를 공부 합니다');

} }

// 이해 안되는 점

// ? null 값

// My myC = new My(); // myC.ch = new Ch(i:1,a:2, b:2);

// print(myC.i); // print(myC.a); // print(myC.b); // print(myC.ch?.i); // print(myC.ch?.a ?? 'NULLNULL'); // print(myC.ch!.b); // 지양 // myC.ch?.pr();

// ---------------------------------------
