import 'dart:io';

void main() async {
  //stdout.write("Enter Your Sentence Here : \n");
  //var sent = stdin.readLineSync();
  File file = new File('D:\\codes\\leetcode\\Untitled_Message\\test.txt');
  String sent = await file.readAsString();
  if (sent != null) {
    //Split the sentence into a list
    List<String> sents = sent.split(' ');
    var revSent = sents.reversed;

    //splice the splitted lists into a new String
    String result = '';
    revSent.forEach((element) => {
          if (result == null)
            {result = element}
          else
            {result = '$result $element'}
        });
    print(result);
  }
  var numbers = <String>['one', 'two', 'three', 'four'];
  final number = <int>[13, 2, -4, 5];
  number.sort();
  //print(number);

  numbers.sort((a, b) => a.length.compareTo(b.length));
  //print(numbers);
}
