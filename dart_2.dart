import 'dart:math';

class Student {
  String name = '';
  int kor = 0;
  int eng = 0;
  int math = 0;
  double avg = 0.0;

  Student(this.name) {
    kor = Random().nextInt(99) + 1;
    eng = Random().nextInt(99) + 1;
    math = Random().nextInt(99) + 1;
  }

  void setAvg() {
    avg = (kor + eng + math) / 3.0;
  }

  String x() {
    return avg >= 50.0 ? 'PASS' : 'FAIL';
  }
}

void main() {
  List<Student> students = [];
  List<String> names = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'];

  for (var name in names) {
    var student = Student(name);
    student.setAvg();
    students.add(student);
  }

  print('이름  국어  영어  수학  평균  비고');
  for (var student in students) {
    print('${student.name}   ${student.kor}   ${student.eng}   ${student.math}   ${student.avg.toStringAsFixed(2)}   ${student.x()}');
  }

  students.sort((a, b) => b.avg.compareTo(a.avg));

  print('\n평균으로 정렬 (내림차순):');
  print('이름  국어  영어  수학  평균  비고');
  for (var student in students) {
    print('${student.name}   ${student.kor}   ${student.eng}   ${student.math}   ${student.avg.toStringAsFixed(2)}   ${student.x()}');
  }
}
