import 'package:flutter/material.dart';
import 'package:trung_son/helper/productHelper.dart';
import 'package:trung_son/models/product/items.dart';
import 'package:trung_son/models/product/product.dart';
import 'package:trung_son/screens/home/components/item_card.dart';

class Body extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BodyPage(),
    );
  }
}

class BodyPage extends StatefulWidget {
  @override
  _BodyPageState createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  Future<Product> futureProduct;
  int currentPage = 1;
  int pageSize = 10;
  List<Items> originalItems = [];
  List<Items> items = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureProduct = getProducts(
      currentPage: currentPage,
      pageSize: pageSize,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<Product>(
          future: futureProduct,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return buildProducts(items: snapshot.data.items);
            } else if (snapshot.hasError) {
              print(snapshot.error);
              return Text("${snapshot.error}");
            }
// By default, show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }

  ListView buildProducts({List<Items> items}) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (BuildContext context, int index) {
        Items item = items[index];
        print('index $index');
        print(item.mediaGalleryEntries[0].file);
        final file = item.mediaGalleryEntries[0].file;
        final imgPath =
            'https://trungson.inapps.technology/media/catalog/product/$file';
        return ItemProduct(
          title: item.name,
          imgPath: imgPath,
          price: item.price,
        );
      },
    );
  }
}
