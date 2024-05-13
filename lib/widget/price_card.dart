import 'package:flutter/material.dart';

class PriceCard extends StatefulWidget {
  const PriceCard({
    super.key,
    required this.controller,
    required this.width,
    required this.height,
    required this.name,
    required this.price,
    required this.expired,
    required this.stock,
  });

  final TextEditingController controller;
  final double width;
  final double height;
  final String name;
  final String price;
  final String expired;
  final String stock;

  @override
  State<PriceCard> createState() => _PriceCardState();
}

class _PriceCardState extends State<PriceCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: widget.controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Search Here',
            prefixIcon: Icon(Icons.search),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          // margin: const EdgeInsets.all(5),
          clipBehavior: Clip.antiAlias,
          width: widget.width,
          height: widget.height / 5,
          decoration: BoxDecoration(
            color: Colors.blue.shade200,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(fontFamily: 'YsaMedium', fontSize: 20),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'price',
                        style: TextStyle(fontFamily: 'YsaMedium', fontSize: 20),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Expired',
                        style: TextStyle(fontFamily: 'YsaMedium', fontSize: 20),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Stock',
                        style: TextStyle(fontFamily: 'YsaMedium', fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Container(
                  margin: const EdgeInsets.all(5),
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: const Icon(Icons.delete)),
              SizedBox(width: 8),
            ],
          ),
        ),
      ],
    );
  }
}
