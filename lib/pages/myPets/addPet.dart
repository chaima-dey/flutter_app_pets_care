import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutterapppetscare/theme/constant.dart';
import 'package:intl/intl.dart';


class addPetPage extends StatefulWidget {

  @override
  _addpetState createState() => _addpetState();


}


class _addpetState extends State<addPetPage> {
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.always;
  bool readOnly = false;
  bool showSegmentedControl = true;

  final ValueChanged _onChanged = (val) => print(val);
  var genderOptions = ['Male', 'Female'];
  var typeOptions = ['Cat', 'Dog','Rodent','Bird','Other'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primary,
           centerTitle: true,
          title: Text("Add new pet",style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.normal
          ),),
          actions: <Widget>[
        IconButton(
        icon: Icon(
          Icons.refresh,
          color: Colors.white,

        ),
      onPressed: () {},
    ),]
    ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: ListView(
            children: <Widget>[
              FormBuilder(
                // context,
                key: _fbKey,
                initialValue: {
                  'date': DateTime.now(),
                },
                readOnly: false,
                child: Column(
                  children: <Widget>[
                    FormBuilderImagePicker(
                      attribute: 'images',
                      decoration: const InputDecoration(
                        labelText: 'Images',
                        labelStyle: TextStyle(color: colortheme),

                      ),

                      defaultImage: NetworkImage(
                          'https://cohenwoodworking.com/wp-content/uploads/2016/09/image-placeholder-500x500.jpg'),
                      maxImages: 1,
                      iconColor: Colors.red,

                      // readOnly: true,
                      validators: [
                        FormBuilderValidators.required(),

                      ],
                      onChanged: _onChanged,
                    ),
                    SizedBox(height: 15),

                    FormBuilderTextField(
                      decoration: const InputDecoration(
                        focusColor: colortheme,
                        labelText: 'Name',
                        labelStyle: TextStyle(color: colortheme),

                      ),
                      attribute: 'name',
                      onChanged: _onChanged,

                    ),
                    SizedBox(height: 15),

                    FormBuilderTextField(

                      decoration: const InputDecoration(
                        focusColor: colortheme,
                        labelText: 'Color',

                        labelStyle: TextStyle(color: colortheme),

                      ),
                      attribute: 'color',
                      onChanged: _onChanged,

                    ),
                    SizedBox(height: 15),

                    FormBuilderDateTimePicker(
                      attribute: 'date Birth',
                      onChanged: _onChanged,
                      inputType: InputType.both,
                      decoration: const InputDecoration(
                        labelText: 'Date Birth',
                        labelStyle: TextStyle(color: colortheme),

                      ),
                      validator: (val) => null,
                      // locale: Locale('ru'),
                      initialTime: TimeOfDay(hour: 8, minute: 0),
                      // initialValue: DateTime.now(),
                      // readonly: true,
                    ),

                    SizedBox(height: 15),

                    FormBuilderDropdown(
                      attribute: 'gender',
                      decoration: const InputDecoration(
                        labelText: 'Gender',
                        labelStyle: TextStyle(color: colortheme),

                      ),
                      // initialValue: 'Male',
                      hint: Text('Select Gender'),
                      validators: [FormBuilderValidators.required()],
                      items: genderOptions
                          .map((gender) => DropdownMenuItem(
                        value: gender,
                        child: Text('$gender'),
                      ))
                          .toList(),
                      // isExpanded: false,
                      allowClear: true,
                    ),

                    SizedBox(height: 15),

                    FormBuilderDropdown(
                      attribute: 'tupe',
                      decoration: const InputDecoration(
                        labelText: 'Type',
                        labelStyle: TextStyle(color: colortheme),

                      ),
                      // initialValue: 'Male',
                      hint: Text('Select type'),
                      validators: [FormBuilderValidators.required()],
                      items: typeOptions
                          .map((type) => DropdownMenuItem(
                        value: type,
                        child: Text('$type'),
                      ))
                          .toList(),
                      // isExpanded: false,
                      allowClear: true,
                    ),

                    SizedBox(height: 15),
                    FormBuilderTextField(
                      keyboardType: TextInputType.multiline,

                      decoration: const InputDecoration(
                        focusColor: colortheme,
                        labelText: 'Description',

                        labelStyle: TextStyle(color: colortheme),

                      ),
                      attribute: 'Description',
                      onChanged: _onChanged,

                    ),
                    SizedBox(height: 15),

                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                      color: Color.fromRGBO(124,62,134, 0.8),
                      child:
                      Text('Save', style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        if (_fbKey.currentState.saveAndValidate()) {
                          print(_fbKey.currentState.value);
                        } else {
                          print(_fbKey.currentState.value);
                          print('validation failed');
                        }
                      },
                    ),
                  ),
                  SizedBox(width: 20),
                //  Expanded(
                  //  child: MaterialButton(
                    //  color: Theme.of(context).accentColor,
                      //child: Text('Reset', style: TextStyle(color: Colors.white)),
                      //onPressed: () {
                        //_fbKey.currentState.reset();
                      //},
                    //),
                  //),
                ],
              ),
            ],
          ),


        ),);

  }

}