

void main(){

  List <Map<String, dynamic>> myList =[
    {
      "id":1,
      "age":30,
      "name":"juma",
    },

   {
      "id":2,
      "age":40,
      "name":"asha",
    },

   {
      "id":3,
      "age":10,
      "name":"alex",
    },

  ];

List <int> numberList =[9,1,3,7,8];

numberList.sort();

// for(var n in myList){

//   return myList.sort((a, b) => b['age'].compareTo(a['age']));

// }
myList.sort((a, b) => a['age'].compareTo(b['age']));
  print(myList);

// // print(numberList);
// myList.map((x)=>x.remove([0]));
// print(myList);


}