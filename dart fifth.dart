void main() {
  
  List<int> li = [1,2,3];
  
  // 어떤 배열 -> 요소마다 작업하고 -> 결과로 새로운 배열을 만듬
  // [ x, xx, xxx ]
  print(li.map<int>((int e){
    return e+1;
  }).toList());
  
  List<String> newLi = li.map<String>((int e){
    return (e+1).toString();
  }).toList();
  print(newLi);
  print(li);
  
  
  li.forEach((int i){
    print(i*i);
  });
  print(li);
  
  new Container(child: new Icon());
  new Container(child: new Text('안녕하세요'));
  new Container(child: new Container());
}

class Widget {
  double width;
  double height;
}

class Container extends Widget {
//   double width = 50.0;
//   double height = 60.0;
  Widget child;
  Container({this.child}) {
    print('Container()?');
    _init();
  }

  void _init() {
    print('Child: ${child.width} ${child.height}');
  }
  
}

class Icon extends Widget {
  double width = 20.0;
  double height = 30.0;
}

class Text extends Widget {
  double width = 40;
  String data;
  Text(
    this.data,
  );
  
  
}
