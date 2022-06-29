import 'package:email_validator/email_validator.dart';
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

      Future.delayed(Duration.zero, () async {
        bool done = await FeedbackData.addFeedBack(tx1.text, tx2.text);
        String message = 'Feedback Sent!';
        if (!done) {
          message = 'Error Occurred.Please mail at dxtkastb@gmail.com';
        }
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(message),
            ),
          );
        }
      });
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
              controller: tx1,
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
                else if(!(EmailValidator.validate(value))){
                  return 'Enter valid email';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: TextFormField(
              controller: tx2,
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
