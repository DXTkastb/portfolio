import 'package:flutter/material.dart';
import 'package:portfolio/contact/feedbacks/feedbackData.dart';

import '../buttons/resumebutton.dart';

class ContactForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContactFormState();
  }
}

class ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController tx1;
  late TextEditingController tx2;

  void Function()? pressfunc() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).removeCurrentSnackBar();
      String message = 'Processing data';
      if (feedbackData.count < 2) {
        print(feedbackData.count);
        feedbackData.count++;
        feedbackData.mail[feedbackData.count] = tx1.text;
        feedbackData.description[feedbackData.count] = tx2.text;
      } else {
        message = 'Overwhelming response!. Please mail dxtkastb@gmail.com';
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
        ),
      );
    }
  }

  @override
  void initState() {
    tx1 = TextEditingController();
    tx2 = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    tx1.dispose();
    tx2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: TextFormField(
              cursorColor: Colors.green,

              decoration: const InputDecoration(
                label: Text('Email'),

                // fillColor: Color.fromRGBO(161, 226, 255, 1.0),

                labelStyle: TextStyle(color: Colors.black87, fontSize: 17),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
              ),

              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter email';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter description';
                }
                return null;
              },
              cursorColor: Colors.green,
              maxLength: 100,
              minLines: 3,
              maxLines: 4,
              decoration: const InputDecoration(
                label: Text('Description/Feedback'),
                labelStyle: TextStyle(color: Colors.black87, fontSize: 17),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
              ),
            ),
          ),
          ResumeButton(
              'SUBMIT', false, Colors.black, Colors.green.shade600, pressfunc)
        ],
      ),
    );
  }
}
