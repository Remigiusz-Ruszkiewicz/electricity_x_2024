import 'package:flutter/material.dart';

import 'base/page_widget.dart';
import 'generated/locale_keys.g.dart';

class TakerPanel extends StatelessWidget {
  const TakerPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageWidget(
        title: LocaleKeys.taker,
        topWidget: Column(
          children: const [
            Text(
              'Saldo twojego konta',
              style: TextStyle(color: Colors.deepOrange),
            ),
            Image(
              image: AssetImage('assets/images/saldo_wykres.png'),
              color: Colors.deepOrange,
            ),
          ],
        ),
        midWidget: ExpansionTile(
          title: const Text('Historia Transakcji', style: TextStyle(color: Colors.deepOrange)),
          children: [
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Card(
                color: Colors.black12.withOpacity(0.1),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(image: AssetImage('assets/images/logo.png')),
              ),
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Card(
                color: Colors.black12.withOpacity(0.1),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(image: AssetImage('assets/images/logo.png')),
              ),
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Card(
                color: Colors.black12.withOpacity(0.1),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(image: AssetImage('assets/images/logo.png')),
              ),
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Card(
                color: Colors.black12.withOpacity(0.1),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(image: AssetImage('assets/images/logo.png')),
              ),
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Card(
                color: Colors.black12.withOpacity(0.1),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(image: AssetImage('assets/images/logo.png')),
              ),
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Card(
                color: Colors.black12.withOpacity(0.1),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(image: AssetImage('assets/images/logo.png')),
              ),
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Card(
                color: Colors.black12.withOpacity(0.1),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(image: AssetImage('assets/images/logo.png')),
              ),
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Card(
                color: Colors.black12.withOpacity(0.1),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(image: AssetImage('assets/images/logo.png')),
              ),
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Card(
                color: Colors.black12.withOpacity(0.1),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(image: AssetImage('assets/images/logo.png')),
              ),
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Card(
                color: Colors.black12.withOpacity(0.1),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(image: AssetImage('assets/images/logo.png')),
              ),
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Card(
                color: Colors.black12.withOpacity(0.1),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(image: AssetImage('assets/images/logo.png')),
              ),
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Card(
                color: Colors.black12.withOpacity(0.1),
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Image(image: AssetImage('assets/images/logo.png')),
              ),
            ),
          ],
        ),
        bottomWidget: null);
  }
}
