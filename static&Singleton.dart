void main(){
  
 
  S1 s1 = new S1();
  
  S2 s2 = new S2();
  

  
// print(M.i);
  print(M.init());
//   print(M.i);
  
}

// int i = 0;

class M{
  static int? _i;
  
  static int init(){
    if(M._i == null){
      M._i = 1;
      return M._i!;
    }
    return M._i!;
  }
}
// Colors.red
// Colors.orgb(#ffasdfg)
class S1{
 void ch(int i){
   
//    if(M.i == null){
//        M.i = 1;
//        M.i = M.i! * i;
//        print(M.i);
//    }
//    else{
//       M.i = M.i! * i;
//       print(M.i);
//    }
   print(M.init() *i);
   return;
 } 
}
class S2{
  void pr(){
//     if(M.i == null){
//       M.i = 1;
//     }
//     print(M.i);
    print(M.init());
    return;
  }
}
