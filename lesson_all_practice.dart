import 'dart:ffi';
import 'dart:io';

void main() {
  // massive();
  // threeDigitNumber();
  // threeDigitNumber2();
  // days();
  // load();
  // threeDigit();
  // questionnaire();
  // range();
  // number();
  // age();
  // trueFalse();
  continiousInput();
}

// 9) В диапазоне чисел от 1 до 100 найти среднее арифметическое чисел.
void range() {
  // for (int i = 1; i <= 100; i++) {
  //   if (i >= 1 && i <=100) {
  //     print('object');
  //   } else if (i = i + 1 : 1 = 1 + 1 ){
  //     print(" Сумма =");
  //   }
  // }
}

//10) При заданном целом числе n посчитайте n + nn + nnn.
void number() {}

//11) Дан возраст. Если возраст до 7, вывести "Вам в садик". Если возраст с 7 до 18, вывести "Вам в школу". Если возраст с 19 до 23, вывести "Вам в универ".Если возраст с 23 до 60, вывести "Вам на работу". Если возраст с 60 до 100, вывести "Вы пенсионер". В противном случае вывести "Неправильный возраст".
void age() {
  int age = 130;

  if (age <= 7) {
    print('вам в садик');
  } else if (age < 8 || age <= 18) {
    print('Вам в школу');
  } else if (age <= 19 || age <= 23) {
    print('Вам в универ');
  } else if (age <= 23 || age <= 60) {
    print('Вам на работу');
  } else if (age <= 60 || age <= 100) {
    print('Вы пенсионер');
  } else if (age <= 101 || age <= 135) {
    print('Неправильный возраст');
  }
}

// 12) Дано шестизначное число, если сумма первых чисел равна сумме вторых трех чисел, вывести true, а иначе вывести false.
void trueFalse() {
  int num = 123123;
  dynamic a1, a2, a3, a4, a5, a6;

  a1 = num / 100000;
  a2 = num / 10000 % 10;
  a3 = num / 1000 % 10;
  a4 = num / 100 % 10;
  a5 = num / 10 % 10;
  a6 = num % 10;

  if (a1 + a2 + a3 == a4 + a5 + a6) {
    print(true);
  } else {
    print(false);
  }
}

//13) Организовать беспрерывный ввод чисел с клавиатуры, пока пользователь не введёт 0. После ввода нуля, показать на экран количество чисел, которые были введены, их общую сумму и среднее арифметическое. Подсказка: необходимо объявить переменную-счетчик, которая будет считать количество введенных чисел, и переменную, которая будет накапливать общую сумму чисел. Обработать возможные ошибки.
void continiousInput() {
  int i = 0;
  int sum = 0;
  // int number = 0;

  // print('Число ${i + 1} = ');
  // print("Количество введенных чисел: ${i + 1}");
  // print("Общяя сумма: $sum");
  // print("Среднее арифметическое: ${sum / (i + 1)}");
}

// 7) Анкета. С помощью stdin sdout реализуйте программу, которая запрашивает у пользователя имя, возраст, адрес, хобби. В конечном итоге вывести на экран информацию о пользователе:
// Вас зовут: XXX
// Ваш возраст: XXX
// Ваш адрес: XXX
// Ваше хобби: XXX

// 8) Поставить проверку к предыдущему заданию. Создайте переменные myName myAge и.т.д

void questionnaire() {
  stdout.write('Вас зовут: ');
  String myName = stdin.readLineSync()!;
  print('Ваше  имя: $myName');

  stdout.write('Ваш возраст: ');
  int myAge = int.parse(stdin.readLineSync()!);
  print('Вам: $myAge');

  stdout.write('Ваш адрес: ');
  dynamic myAddres = stdin.readLineSync()!;
  print("Вы проживаете по адресу: $myAddres");

  stdout.write('Ваше хобби: ');
  String myHobby = stdin.readLineSync()!;
  print("Это круто $myHobby");
}

// 6) Даны три числа. Если сумма двух из них равна третьему, то выведите такое равенство, если нет, то выведите произведение всех чисел.
void threeDigit() {
  int a = 2, b = 3, c = 4;
  int result = a * b * c;

  if (a + b == c) {
    print('Сумма равна с ');
  } else if (a + c == b) {
    print('Сумма равна c ');
  } else if (b + c == a) {
    print('Сумма равна а ');
  } else {
    print('Произведение чисел равна = $result');
  }
}

// 5) Вывести на экран 8 раз фразу "Loading...". Используйте цикл for
void load() {
  for (var i = 1; i <= 8; i++) {
    print('Loading $i');
  }
}

// 1) Создайте и заполните массив. Выведите первый и последний элемент списка.
void massive() {
  List<int> arr = [1, 2, 3, 4, 5];

  print(['first number: ${arr.first}', 'last number: ${arr.last}']);
}

// 2) Дано трехзначное число. Найдите произведение их цифр.
void threeDigitNumber() {
  int a = 2, b = 2, c = 3;
  int res = a * b * c;

  print('Прозведение цифр равна: $res');
}

// 3) Дано трехзначное число. Замените среднюю цифру на ноль.
void threeDigitNumber2() {
  int a = 123;
  int b = a ~/ 100 * 100 + a % 10;
  print(b);
}

//4) Дан номер дня недели. Выведите название дня недели. Решение через if и switch case.
void days() {
  int day = 12;

  switch (day) {
    case 1:
      print('День недели: Понедельник ');
      break;

    case 2:
      print('День недели: Вторник ');
      break;

    case 3:
      print('День недели: Среда ');
      break;

    case 4:
      print('День недели: Четверг');
      break;

    case 5:
      print('День недели: Пятница');
      break;

    case 6:
      print('День недели: Суббота ');
      break;

    case 7:
      print('День недели: Воскресенье ');
      break;
    default:
      print('Ошибка! Введите другой день. ');
  }
}
