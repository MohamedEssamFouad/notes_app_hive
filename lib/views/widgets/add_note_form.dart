import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState>formkey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return         Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children:[
          SizedBox(height: 32.h,),
            CustomTextField(
            onSaved: (value){
              title=value;
            },
            hint: "Title",
      
          ),
          SizedBox(height: 16.h,)  ,
            CustomTextField(
            onSaved: (value){
              subTitle=value;
            },
            hint: "SubTitle",
            maxLines: 5,
      
          ),
          SizedBox(height: 16.h,)  ,
             CustomButton(
            onTap: ()
            {
              if(formkey.currentState!.validate())
              {
                formkey.currentState!.save();
              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {

                });
              }
            },
          ),
          SizedBox(height: 16.h,)  ,
      
        ],
      ),
    );
  }
}
