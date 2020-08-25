import 'package:flutter/material.dart';
import 'package:trung_son/constants.dart';
import 'package:trung_son/models/product/items.dart';
import 'package:trung_son/screens/home/components/Notifier.dart';
import 'package:trung_son/screens/home/components/item_card.dart';

class ReloadListView extends StatefulWidget {
  const ReloadListView({Key key}) : super(key: key);

  @override
  _ReloadListViewState createState() => _ReloadListViewState();
}

class _ReloadListViewState extends State<ReloadListView> {
  Notifier notifier;

  @override
  void initState() {
    super.initState();
    notifier = Notifier();
    notifier.getMore();
  }

  @override
  void dispose() {
    notifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<Items>>(
        valueListenable: notifier,
        builder: (BuildContext context, List<Items> value, Widget child) {
          return value == null
              ? Center(child: CircularProgressIndicator())
              : RefreshIndicator(
                  color: kPrimaryColor,
                  onRefresh: () async {
                    return await notifier.reload();
                  },
                  child: value.isEmpty
                      ? ListView.builder(
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemCount: 1,
                          itemBuilder: (BuildContext context, int index) {
                            return const Center(child: Text('No Item!'));
                          })
                      : NotificationListener<ScrollNotification>(
                          onNotification: (ScrollNotification scrollInfo) {
                            if (scrollInfo is ScrollEndNotification &&
                                scrollInfo.metrics.extentAfter == 0) {
                              notifier.getMore();
                              return true;
                            }
                            return false;
                          },
                          child: ListView.separated(
                              separatorBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Divider(),
                                  ),
                              padding: EdgeInsets.only(top: 20),
                              physics: const AlwaysScrollableScrollPhysics(),
                              itemCount: value.length,
                              cacheExtent: 5,
                              itemBuilder: (BuildContext context, int index) {
                                Items item = value[index];
                                final file = item.mediaGalleryEntries[0].file;
                                final imgPath =
                                    'https://trungson.inapps.technology/media/catalog/product/$file';
                                return ItemProduct(
                                  title: item.name,
                                  imgPath: imgPath,
                                  price: item.price,
                                );
                              }),
                        ),
                );
        });
  }
}
