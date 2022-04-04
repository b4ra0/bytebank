import 'package:bytebank/models/name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NameContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NameView();
  }
}

class NameView extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _nameController.text = BlocProvider.of<NameCubit>(context).state;
    return Scaffold(
      appBar: AppBar(
        title: Text("Change name"),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: "Desired name",
            ),
            controller: _nameController,
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                child: Text("Change"),
                onPressed: () {
                  final name = _nameController.text;
                  BlocProvider.of<NameCubit>(context).change(name);
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
