import 'package:flutter/material.dart';
import 'package:namer_app/utils/provider/auth.dart';
import 'package:namer_app/utils/provider/marketplace.dart';
import 'package:provider/provider.dart';

class Marketplace extends StatefulWidget {
  Marketplace({Key? key}) : super(key: key);

  @override
  createState() => _MarketplaceState();
}

class _MarketplaceState extends State<Marketplace> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      // Auth auth = context.read<Auth>();

      MarketplaceState marketplaceState = context.read<MarketplaceState>();
      marketplaceState.getMarketplaceItems();

      // if (auth.getGoogleOAuthToken() == '') {
      //   showModalBottomSheet(
      //     context: context,
      //     builder: (context) => Container(
      //       height: 100,
      //       decoration: BoxDecoration(
      //         color: Theme.of(context).colorScheme.surface,
      //         borderRadius: BorderRadius.only(
      //           topLeft: Radius.circular(15),
      //           topRight: Radius.circular(15),
      //         ),
      //         boxShadow: [
      //           BoxShadow(
      //             color: Colors.black.withOpacity(0.2),
      //             blurRadius: 8,
      //             offset: Offset(0, 5),
      //           ),
      //         ],
      //       ),
      //       child: Center(
      //         child: TextButton(
      //           onPressed: () => auth
      //               .signInWithGoogle()
      //               .then((value) => Navigator.pop(context)),
      //           child: Text('Sign in with Google'),
      //         ),
      //       ),
      //     ),
      //   );
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Consumer<MarketplaceState>(
            builder: (context, value, child) => ListView(
                  children: value.marketplaceCategoryList
                      .map((e) => _MarketplaceCategory(marketplaceCategory: e))
                      .toList(),
                )));
  }
}

class _MarketplaceCategory extends StatelessWidget {
  const _MarketplaceCategory({
    Key? key,
    required this.marketplaceCategory,
  }) : super(key: key);

  final MarketplaceCategory marketplaceCategory;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(maxHeight: double.infinity, maxWidth: 300),
        child: Center(
            child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.surface,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 8,
                offset: Offset(0, 5),
              ),
            ],
          ),
          padding: EdgeInsets.all(12),
          child: Column(children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: NetworkImage(marketplaceCategory.imageUrl ?? ''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(marketplaceCategory.name ?? ''),
            SizedBox(height: 10),
            Text(marketplaceCategory.description ?? ''),
            Table(
              children: marketplaceCategory.itemList
                      ?.map((item) => TableRow(children: [
                            Text(
                              item.name ?? '',
                              style: TextStyle(fontSize: 8),
                            ),
                            Text(
                              item.description ?? '',
                              style: TextStyle(fontSize: 8),
                            ),
                            Text(
                              item.price.toString(),
                              style: TextStyle(fontSize: 8),
                            ),
                            ElevatedButton(
                                onPressed: () => {},
                                child: Text(
                                  'Add to cart',
                                  style: TextStyle(fontSize: 5),
                                ))
                          ]))
                      .toList() ??
                  [],
              columnWidths: {
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(1),
                3: FlexColumnWidth(1),
              },
            )
          ]),
        )));
  }
}
