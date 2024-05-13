import 'package:flutter/material.dart';
import 'package:maga_admin/const/const.dart';
import 'package:maga_admin/pages/a_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    // var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        title: const Text('Administration Panel'),
      ),
      body: ListView.builder(
          itemCount: cardlist.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return APage(
                      name: cardlist[index].name,
                      url: cardlist[index].url,
                    );
                  },
                ));
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: width,
                height: 70,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade400,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        cardlist[index].url,
                        width: 30,
                        height: 30,
                      ),
                      const Spacer(),
                      Container(
                        margin: EdgeInsets.all(5),
                        child: Image.asset(
                          'images/arrow.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
