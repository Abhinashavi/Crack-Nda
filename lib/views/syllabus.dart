import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Syllabus extends StatefulWidget {
  @override
  _SyllabusState createState() => _SyllabusState();
}

class _SyllabusState extends State<Syllabus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF8CAAB1),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "NDA",
                style: TextStyle(
                    color: Colors.black87, fontWeight: FontWeight.w600),
              ),
              Text(
                "Syllabus",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
              )
            ],
          ),
          actions: <Widget>[
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(
                  Icons.share,
                ))
          ],
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                Text(
                  "NDA Syllabus Mathematics & General Ability Test",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "NDA examination is divided into two papers Mathematics and General Ability. It aims to judge a candidate on his logical ability and general awareness.",
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                    "1. The Mathematics paper contains 300 marks while the General Ability test holds 600 marks. The written test will be of a total of 900 marks."),
                SizedBox(
                  height: 6,
                ),
                Text(
                    "2. For every incorrect response, 0.33 marks will be deducted as negative marking in the examination."),
                SizedBox(
                  height: 6,
                ),
                Text(
                    "3. After clearing the written test, candidates have to go through the SSB Interview. The interview process will have a total of 900 marks."),
                SizedBox(
                  height: 6,
                ),
                Text(
                    "4. The question paper of Mathematics and PART B of the General Ability test will be available in both English and Hindi languages."),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Mathematics",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: Colors.blue),
                ),
                Padding(
                  padding: EdgeInsets.all(2),
                  child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                    border: TableBorder.all(width: 1.0, color: Colors.black26),
                    children: [
                      TableRow(children: [
                        Center(
                          child: Text(
                            "Subject",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "Code",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "Duration",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "Maximum Marks",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "Mathematics",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("01"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "2.5 Hours",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "300",
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "General Ability",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("02"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "2.5 Hours",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "600",
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Total",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("-"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "5 Hours",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "900",
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "SSB Interview",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("-"),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "5 Days",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "900",
                          ),
                        ),
                      ])
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "General Ability",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: Colors.blue),
                ),
                Padding(
                    padding: EdgeInsets.all(2),
                    child: Table(
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.bottom,
                      border:
                          TableBorder.all(width: 1.0, color: Colors.black26),
                      children: [
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Total Marks",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("600 Marks"),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Total Questions",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("150 Questions"),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "English Question",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("50 Questions"),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "English Marks",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("200 Marks"),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "General Science Questions",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("100 Questions"),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "General Science Marks",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("400 Marks"),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Correct Answer",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("+4",
                                style: TextStyle(color: Colors.green)),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Wrong Answer",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "-1.33",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ]),
                      ],
                    )),
                Divider(),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "NDA Syllabus For Maths",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: Colors.blue),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "1. Paper 1 i.e Mathematics is purely based on 10 + 2 Level of Mathematics.",
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: EdgeInsets.all(2),
                    child: Table(
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.bottom,
                      border:
                          TableBorder.all(width: 1.0, color: Colors.black26),
                      children: [
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Algebra",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Trigonometry",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Differential Calculus",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Vector Algebra",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Matrices and Determinants",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Analytical Geometry of Two and Three Dimensions ",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Integral Calculus and Differential Equations",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Statistics and Probability",
                            ),
                          ),
                        ]),
                      ],
                    )),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Books Recommended",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: Colors.blue),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: EdgeInsets.all(2),
                  child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                    border: TableBorder.all(width: 1.0, color: Colors.black26),
                    children: [
                      TableRow(children: [
                        Center(
                          child: Text(
                            "Book",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "Authors",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "Mathematics for NDA and NA: National Defence Academy and Naval Academy",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("R S Aggarwal"),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "Quantitative aptitude for competitive examinations",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("R S Aggarwal"),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Study Package MATHEMATICS NDA & NA Entrance Exam",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Arihant"),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "NDA Mathematics (Hindi)",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("RPH Editorial Board"),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Pathfinder",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Arihant"),
                        ),
                      ])
                    ],
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Divider(),
                Text(
                  "NDA 2020 Syllabus for General Ability Test",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: Colors.blue),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                    "Paper 2 in NDA i.e. the General Ability Test judges a candidate’s basic awareness and English proficiency. This section is further divided into two parts, English and General Knowledge."),
                Text(
                    "1. Total marks awarded to Paper 2 are 600.This paper must be completed in 2.5 hours."),
                SizedBox(
                  height: 18,
                ),
                Text(
                  "Part A - ENGLISH",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "1. The English portion of the entrance test is designed in a way to judge a candidate's knowledge of basic grammar and vocabulary."),
                Text(
                    "2. It judges a candidate’s ability to form correct sentences and use of words."),
                Text(
                    "3. he syllabus of the English paper ranges from various aspects like the knowledge and usage of grammar, vocabulary, comprehension, and his mental ability to remember and place the meaning of words in their proper places."),
                Text(
                    "4. Marks allotted to this section are 300 and it is easy to score too."),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Syllabus",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Padding(
                    padding: EdgeInsets.all(2),
                    child: Table(
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.bottom,
                      border:
                          TableBorder.all(width: 1.0, color: Colors.black26),
                      children: [
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Grammar and usage",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Comprehension and cohesion",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Spotting of errors",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Para Jumbling",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Fill in the blanks",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Synonyms and antonyms",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Vocabulary",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Cloze Test",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Sentence correction and improvement",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Idioms and proverbs",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Completion of Sentence and para",
                            ),
                          ),
                        ]),
                      ],
                    )),
                SizedBox(
                  height: 18,
                ),
                Divider(),
                Text(
                  "Part B - GENERAL KNOWLEDGE",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "The question paper on General Knowledge will cover current affairs, questions from Physics, Chemistry, General Science, Social Studies, Geography and Current Events. NDA syllabus 2020 of each topic is given below. The paper aims to check knowledge and intelligent understanding of the subject."),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                Text(
                  "Physics Section",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: EdgeInsets.all(2),
                    child: Table(
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.bottom,
                      border:
                          TableBorder.all(width: 1.0, color: Colors.black26),
                      children: [
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "States of Matter and its properties",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Light and Sound (properties)",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Motion and Laws of Motion",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Magnet and its properties",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Work, Energy, and Power",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Current and Electricity",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Modes of Transfer of Heat and its effect",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "General Principles of Working of Simple Pendulum, Pulleys, Siphon, Levers, Balloon, Pumps, Hydrometer, Pressure Cooker, Thermos Flask,",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Gramophone, Telegraphs, Telephone, Periscope, Telescope, Microscope, Mariner’s Compass; Lightening Conductors, Safety Fuses",
                            ),
                          ),
                        ]),
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                Text(
                  "Chemistry Section",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: EdgeInsets.all(2),
                    child: Table(
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.bottom,
                      border:
                          TableBorder.all(width: 1.0, color: Colors.black26),
                      children: [
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Physical and Chemical Changes",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Air and Water (properties)",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Chemical equations and Laws of Chemical Combination",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Elements, Compounds, and Mixtures",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Acids, Bases and Salts",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Properties of Oxygen, Hydrogen, etc. with Oxidation and Reduction",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Carbon and its forms",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Atom and its structure (details)",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Fertilizers",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Use of materials for the preparation of different chemicals",
                            ),
                          ),
                        ]),
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                Text(
                  "History Section",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: EdgeInsets.all(2),
                    child: Table(
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.bottom,
                      border:
                          TableBorder.all(width: 1.0, color: Colors.black26),
                      children: [
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Indian History - Culture and Civilisation",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Constitution and Administration of India",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Nationalism in India",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Government of India at various levels",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Five Year plans of India",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Renaissance and Discovery",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "French, Russian and Industrial Revolution",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "United Nations and the Concept of one world",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Democracy in India",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Teachings of Mahatma Gandhi and other eminent leaders",
                            ),
                          ),
                        ]),
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                Text(
                  "Geography Section",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: EdgeInsets.all(2),
                    child: Table(
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.bottom,
                      border:
                          TableBorder.all(width: 1.0, color: Colors.black26),
                      children: [
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Earth and its Origin and Movement (latitudes and longitudes)",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Tides and Oceanic Currents",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Rocks and Its classification",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "The atmosphere and Atmospheric Pressure",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Regional Geography of India",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Types of Climate",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Agricultural and Industries",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Transportation and Trading routes of India",
                            ),
                          ),
                        ]),
                        TableRow(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Imports and Exports of India",
                            ),
                          ),
                        ]),
                      ],
                    )),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                Text(
                  "Current Affairs and General Knowledge",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: EdgeInsets.all(2),
                    child: Table(
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.bottom,
                        border:
                            TableBorder.all(width: 1.0, color: Colors.black26),
                        children: [
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Awards and Achievements",
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Sports",
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Book and Authors",
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Defence Weapons",
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Recent events in India ",
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Important World Events",
                              ),
                            ),
                          ]),
                          TableRow(children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Best thing Start Reading Newspapers. Because UPSC says including sun and under sun is your syllabus",
                              ),
                            ),
                          ]),
                        ])),

                SizedBox(
                  height: 18,
                ),
                Text(
                  "Books Recommended For General Ability",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: Colors.blue),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: EdgeInsets.all(2),
                  child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
                    border: TableBorder.all(width: 1.0, color: Colors.black26),
                    children: [
                      TableRow(children: [
                        Center(
                          child: Text(
                            "Book",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            "Authors",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "6 - 10 NCERT all books",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("NCERT"),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "Science and Technology in India (Science and Technology)",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Kalpana Rajaram : Spectrum"),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "History Of Modern India (History)",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Bipan Chandra"),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Oxford School Atlas (Geography)",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Oxford"),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Social Problems In India (Indian Society – GS1)",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Ram Ahuja"),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Objective General English for Competitive Exams",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("S.P. Bakshi"),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Manorama Yearbook",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Mammen Mathew"),
                        ),
                      ])
                    ],

                  ),
                ),
                SizedBox(
                  height: 18,
                ),
              ],
            ),
          ),
        ));
  }
}
