import 'package:easy_localization/easy_localization.dart';
import 'package:electricity_x_2024/base/page_widget.dart';
import 'package:electricity_x_2024/customWidgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'generated/locale_keys.g.dart';

class MapPanel extends StatelessWidget {
  const MapPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      title: LocaleKeys.mapPanel.tr(),
      topWidget: CustomCard(
        content: SizedBox(
          width: 350,
          height: 400,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: GoogleMap(
                      initialCameraPosition: const CameraPosition(
                        target: LatLng(50.068179687218525, 19.94116559466378),
                        zoom: 12,
                      ),
                      markers: {
                        const Marker(
                          markerId: MarkerId('TEST'),
                          position: LatLng(50.068279687218525, 19.94116559466378),
                        ),
                        const Marker(
                          markerId: MarkerId('TEST1'),
                          position: LatLng(50.069279687218525, 19.94116559466378),
                        ),
                        const Marker(
                          markerId: MarkerId('TEST2'),
                          position: LatLng(50.070279687218525, 19.94116559466378),
                        ),
                        const Marker(
                          markerId: MarkerId('TEST3'),
                          position: LatLng(50.071279687218525, 19.94116559466378),
                        ),
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
