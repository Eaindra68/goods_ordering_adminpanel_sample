import 'package:flutter/material.dart';
import 'package:maga_admin/pages/add_page.dart';
import 'package:maga_admin/widget/price_card.dart';

class APage extends StatefulWidget {
  final String name;
  final String url;

  const APage({super.key, required this.name, required this.url});

  @override
  State<APage> createState() => _APageState();
}

class _APageState extends State<APage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return AddPage(
                  name: widget.name,
                  url: widget.url,
                );
              },
            ),
          ).then((value) {
            if (value == 'Success') {
              setState(() {});
            }
          });
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: Image.asset(
          widget.url,
          width: 30,
          height: 30,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: PriceCard(
          controller: controller,
          width: width,
          height: height,
          name: '',
          price: '',
          expired: '',
          stock: '',
        ),
      ),
    );
  }
}
