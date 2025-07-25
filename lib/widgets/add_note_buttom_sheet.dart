
import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_buttom.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}
class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey <FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  
  String ? title , subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
            children: [
               SizedBox(
                    height: 32,
                  ),
                  CustomTextField(
                    onSaved: (value) {
                      title = value;
                    } ,
                    hint: 'title',),
                  const SizedBox(
                    height: 32,
                  ),
                  CustomTextField(
                    onSaved: (value) {
                      subtitle = value;
                    },
                    hint: 'Content', 
                    maxLines: 5
                    ),
                    const SizedBox(height: 32),
                    CustomButton(onTab: () { 
                        if(formKey.currentState!.validate())
                        {
                          formKey.currentState!.save();
                        }else {
                          autovalidateMode = AutovalidateMode.always;
                          setState(() {
                            
                          });
                        }
                     },),
                   const SizedBox(
                      height: 40,
                    ),
            ],
          ),
    );
  }
}
