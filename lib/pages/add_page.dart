import 'dart:io';

import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  final String name;
  final String url;
  const AddPage({super.key, required this.name, required this.url});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  String name = '';
  String price = '';
  String expired = '';
  String stock = '';

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: Row(
          children: [
            Image.asset(
              widget.url,
              width: 30,
              height: 30,
            ),
            const SizedBox(width: 15),
            const Text(
              'Add Page',
              style: TextStyle(
                fontFamily: 'AgBold',
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              width: width,
              height: 60,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 5,
                    ),
                  ]),
              child: TextFormField(
                onSaved: (newValue) {
                  name = newValue.toString();
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Name is Required';
                  }
                },
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Tpye Name Here',
                  suffixIcon: Icon(Icons.turned_in_outlined),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              width: width,
              height: 60,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 5,
                    ),
                  ]),
              child: TextFormField(
                onSaved: (newValue) {
                  price = newValue.toString();
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Price is Required';
                  }
                },
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type Your Price',
                    suffixIcon: Icon(
                      Icons.turned_in_outlined,
                    )),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              width: width,
              height: 60,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 5,
                    ),
                  ]),
              child: TextFormField(
                onSaved: (newValue) {
                  expired = newValue.toString();
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Expired Date is Required';
                  }
                },
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type Expired Date',
                    suffixIcon: Icon(
                      Icons.turned_in_outlined,
                    )),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              width: width,
              height: 60,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 5,
                    ),
                  ]),
              child: TextFormField(
                onSaved: (newValue) {
                  stock = newValue.toString();
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Stock is Required';
                  }
                },
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type Your Stock Number',
                    suffixIcon: Icon(
                      Icons.turned_in_outlined,
                    )),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(8),
              width: 100,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    const BoxShadow(
                      color: Colors.grey,
                      offset: Offset(2, 2),
                      blurRadius: 5,
                    ),
                  ]),
              child: const Text(
                'Upload',
                style: TextStyle(fontFamily: 'YsaMedium', fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
