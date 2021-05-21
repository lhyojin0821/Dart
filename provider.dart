void main(){
Logic logic = Logic();
  Provider(
  logic,
  UI1(logic),
  UI2(logic),  
  );
 
}

class Logic{
  int i = 0;
 
}

class UI1{
  Logic logic;
  UI1(this.logic){
    this.logic.i +=1;
    print(this.logic.i);
  }
}

class UI2{
 Logic logic;
  UI2(this.logic){
    print(this.logic.i);
    this.logic.i+=1;
    print(this.logic.i);
  }
  
}

class Provider{
  Logic logic;
  UI1 ui1;
  UI2 ui2;
  
  Provider(this.logic, this.ui1, this.ui2);
  
}
