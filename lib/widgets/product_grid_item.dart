import 'package:flutter/material.dart';
import 'package:mobile/widgets/nested_tab_bar.dart';
import '../pages/product_detail.dart';

class SingleProduct extends StatelessWidget {
  final prodName;
  final prodPrice;
  final prodPicture;

  SingleProduct({
    this.prodName,
    this.prodPicture,
    this.prodPrice,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prodName,
          child: InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProductDetail())),
            child: GridTile(
              footer: Container(
                  color: Colors.white.withOpacity(0.4),
                  child: ListTile(
                    leading: Text(
                      prodName,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    title: Text(
                      "\$$prodPrice",
                      style: TextStyle(
                          color: Colors.redAccent, fontWeight: FontWeight.w700),
                    ),
                  )),
              child: Image.asset(
                prodPicture,
                fit: BoxFit.cover,
              ),
            ),
          )),
    );
  }
}
