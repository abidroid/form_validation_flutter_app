import 'package:flutter/material.dart';

class Dmc extends StatefulWidget {
  @override
  _DmcState createState() => _DmcState();
}

class _DmcState extends State<Dmc> {
  var formKey = GlobalKey<FormState>();
  int eng, phy, math, sci, geo;
  var obtMarks = '';
  var percentage = '';
  var grade = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DMC'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'English',
                      labelText: 'English Marks',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                  validator: (text) {
                    if (text.isEmpty) {
                      return 'please provide marks';
                    } else {
                      eng = int.parse(text);
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Physics',
                      labelText: 'Physics Marks',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                  validator: (text) {
                    if (text.isEmpty) {
                      return 'please provide marks';
                    } else {
                      phy = int.parse(text);
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Maths',
                      labelText: 'Maths Marks',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                  validator: (text) {
                    if (text.isEmpty) {
                      return 'please provide marks';
                    } else {
                      math = int.parse(text);
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Science',
                      labelText: 'Science Marks',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                  validator: (text) {
                    if (text.isEmpty) {
                      return 'please provide marks';
                    } else {
                      sci = int.parse(text);
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Geography',
                      labelText: 'Geography Marks',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      )),
                  validator: (text) {
                    if (text.isEmpty) {
                      return 'please provide marks';
                    } else {
                      geo = int.parse(text);
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                            ),
                            onPressed: () {
                              formKey.currentState.reset();
                              obtMarks = '';
                              percentage = '';
                              grade = '';
                              setState(() {

                              });
                            },
                            child: Text('Clear'))),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState.validate()) {
                                int obt = eng + phy + math + sci + geo;
                                double per = obt * 100 / 500;

                                if (per >= 80) {
                                  grade = 'A1';
                                } else if (per >= 70) {
                                  grade = 'A';
                                } else if (per >= 60) {
                                  grade = 'B';
                                } else if (per >= 40) {
                                  grade = 'C';
                                } else {
                                  grade = 'Fail';
                                }

                                setState(() {
                                  obtMarks = obt.toString();
                                  percentage = per.toString();
                                });
                              }
                            },
                            child: Text('Calculate'))),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text('Obtained Marks: $obtMarks'),
                SizedBox(
                  height: 16,
                ),
                Text('Percentage: $percentage'),
                SizedBox(
                  height: 16,
                ),
                Text('Grade: $grade')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
