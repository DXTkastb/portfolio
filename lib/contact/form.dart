import 'package:flutter/material.dart';
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

  void Function()? pressfunc() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).removeCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Processing Data'),
        ),
      );
    }
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
            padding: const EdgeInsets.only(bottom: 25),
            child: TextFormField(
              cursorColor: Colors.green,
              decoration: const InputDecoration(
                label: Text('Name'),
                labelStyle: TextStyle(color: Colors.black87, fontSize: 17),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
              ),

              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter Name';
                }
                return null;
              },
            ),
          ),
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
                  return 'Please enter Email';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: TextFormField(
              cursorColor: Colors.green,

              minLines: 4,
              maxLines: 5,
              decoration: const InputDecoration(
                label: Text('Description/Feedback'),
                labelStyle: TextStyle(color: Colors.black87, fontSize: 17),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black26)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
              ),

              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter something';
                }
                return null;
              },
            ),
          ),

          ResumeButton(
              'SUBMIT', false, Colors.black, Colors.green.shade600, pressfunc)
        ],
      ),
    );
  }
}
