import 'package:flutter/material.dart';
import 'package:student_detail_screen/string_const.dart';

class StudentDetail extends StatefulWidget {
  const StudentDetail({super.key});

  @override
  State<StudentDetail> createState() => _StudentDetailState();
}

class _StudentDetailState extends State<StudentDetail> {
  final TextEditingController hindiController = TextEditingController();
  final TextEditingController englishController = TextEditingController();
  final TextEditingController mathController = TextEditingController();
  final TextEditingController scienceController = TextEditingController();
  final TextEditingController computerController = TextEditingController();
  int total = 0;
  double percentage = 0;
  String grade = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringConst.tittleText),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.save,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                TextField(
                  controller: hindiController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                    ),
                    hintText: StringConst.hintHindiText,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: englishController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                    ),
                    hintText: StringConst.hintEnglishText,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: mathController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                    ),
                    hintText: StringConst.hintMathText,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: scienceController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                    ),
                    hintText: StringConst.hintScienceText,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: computerController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                    ),
                    hintText: StringConst.hintComputerText,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                    onPressed: () {
                      int hindi = int.parse(hindiController.text);
                      int english = int.parse(englishController.text);
                      int math = int.parse(mathController.text);
                      int science = int.parse(scienceController.text);
                      int computer = int.parse(computerController.text);
                      total = hindi + english + math + science + computer;
                      percentage = total / 5;
                      grade;
                      if (percentage >= 80) {
                        grade = 'A Grade';
                      } else if (percentage >= 70) {
                        grade = 'B Grade';
                      } else if (percentage >= 60) {
                        grade = 'C Grade';
                      } else if (percentage >= 50) {
                        grade = 'D Grade ';
                      } else {
                        grade = 'You are fail';
                      }

                      setState(() {});
                    },
                    child: const Text(
                      StringConst.elevatedText,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Total marks: $total',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Percentage: $percentage',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Grade: $grade',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
