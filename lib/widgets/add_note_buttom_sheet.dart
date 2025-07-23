import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
           SizedBox(
                height: 32,
              ),
              CustomTextField(hint: 'title',),
              SizedBox(
                height: 24,
              ),
              CustomTextField(hint: 'Content',),
        ],
      ),
    );
  }
}
