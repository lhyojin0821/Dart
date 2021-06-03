void main(){
  
  try{
    dynamic r = [];
  Map<String, dynamic> data = {};
    
  List lData = data['data'];
//   if(lData == null){
//     print("ERROR2");
//     return;
//   }
//   print(lData); // 키가 없으면 null, 타입이 맞지 않는 경우는 오류
    lData.map((e) => e+1).toList();
  
  }
  catch(e){
    print("ERROR");
  }
}
