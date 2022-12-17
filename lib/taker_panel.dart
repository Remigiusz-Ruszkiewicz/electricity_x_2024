import 'package:easy_localization/easy_localization.dart';
import 'package:electricity_x_2024/customWidgets/transaction_widget.dart';
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
        midWidget: Theme(
          data: Theme.of(context).copyWith(
            dividerColor: Colors.transparent,
            unselectedWidgetColor: Colors.deepOrange,
            colorScheme: const ColorScheme.light(
              primary: Colors.deepOrange,
            ),
          ), // ),
          child: ExpansionTile(
            title: const Text('Historia Transakcji',
                style: TextStyle(color: Colors.deepOrange)),
            children: [
              Container(
                height: 80,
                width: double.infinity,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 5,
                  color: const Color.fromRGBO(54, 53, 53, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Data : ' +
                                DateFormat('yyyy-MM-dd hh:mm')
                                    .format(DateTime.now())),
                            Text('Wydatki : 15 zł'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Zużyta Energia : 4 KW'),
                            Text('Czas ładowania : 30 min'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                width: double.infinity,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 5,
                  color: const Color.fromRGBO(54, 53, 53, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Data : ' +
                                DateFormat('yyyy-MM-dd hh:mm')
                                    .format(DateTime.now())),
                            Text('Wydatki : 30 zł'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Zużyta Energia : 7 KW'),
                            Text('Czas ładowania : 55 min'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                width: double.infinity,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 5,
                  color: const Color.fromRGBO(54, 53, 53, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Data : ' +
                                DateFormat('yyyy-MM-dd hh:mm')
                                    .format(DateTime.now())),
                            Text('Wydatki : 25 zł'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Zużyta Energia : 6 KW'),
                            Text('Czas ładowania : 45 min'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
                width: double.infinity,
                child: Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 5,
                  color: const Color.fromRGBO(54, 53, 53, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Data : ' +
                                DateFormat('yyyy-MM-dd hh:mm')
                                    .format(DateTime.now())),
                            Text('Wydatki : 10 zł'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Zużyta Energia : 3 KW'),
                            Text('Czas ładowania : 20 min'),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomWidget: null);
  }
}
