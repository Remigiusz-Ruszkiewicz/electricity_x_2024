import 'package:electricity_x_2024/base/page_widget.dart';
import 'package:electricity_x_2024/customWidgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'generated/locale_keys.g.dart';

class MapPanel extends StatefulWidget {
  const MapPanel({Key? key,}) : super(key: key);
  @override
  State<MapPanel> createState() => _MapPanelState();
}

class _MapPanelState extends State<MapPanel> {
  late bool showChargers;
  late bool showFarms;
  late Set<Marker> markers;
  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor marker2Icon = BitmapDescriptor.defaultMarker;

  @override
  void initState() {
    addCustomIcon();
    addCustomIcon2();
    showChargers = true;
    showFarms = true;
    markers = {};

    setMarkers();
    super.initState();
  }

  void addCustomIcon() {
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(), "assets/images/location_fill_grey.png")
        .then(
      (icon) {
        setState(() {
          markerIcon = icon;
          setMarkers();
        });
      },
    );
  }
  void addCustomIcon2() {
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(), "assets/images/location_fill_grey_red.png")
        .then(
      (icon) {
        setState(() {
          marker2Icon = icon;
          setMarkers();
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      title: LocaleKeys.mapPanel,
      topWidget: CustomCard(
        content: SizedBox(
          width: double.infinity,
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
                          zoom: 14,
                        ),
                        markers: markers),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      midWidget: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Pokaż farmy',
                style: TextStyle(fontSize: 27, color: Colors.amber),
              ),
              Transform.scale(
                scale: 1.3,
                child: Switch(
                  activeColor: Colors.amber,
                  splashRadius: 50.0,
                  value: showFarms,
                  onChanged: (value) => setState(() {
                    showFarms = value;
                    setMarkers();
                  }),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Pokaż ładowarki',
                  style: TextStyle(fontSize: 27, color: Colors.amber),
                ),
                Transform.scale(
                  scale: 1.3,
                  child: Switch(
                    activeColor: Colors.amber,
                    splashRadius: 50.0,
                    value: showChargers,
                    onChanged: (value) => setState(() {
                      showChargers = value;
                      setMarkers();
                    }),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomWidget: const SizedBox(height: 50),
    );
  }

  void setMarkers() {
    if (showChargers && showFarms) {
      markers = combinedMarkers();
    } else if (showChargers && !showFarms) {
      markers = chargersMarkers();
    } else if (!showChargers && showFarms) {
      markers = farmsMarkers();
    } else {
      markers = {
        const Marker(
          markerId: MarkerId('TEST10'),
          position: LatLng(50.068179687218525, 19.94116559466378),
        ),
      };
    }
  }

  Set<Marker> chargersMarkers() {
    return {
      Marker(
        markerId: const MarkerId('TEST'),
        position: const LatLng(50.068279687218525, 19.94116559466378),
        icon: markerIcon,
      ),
      Marker(
        markerId: const MarkerId('TEST1'),
        position: const LatLng(50.069279687218525, 19.94116559466378),
        icon: markerIcon,
      ),
      Marker(
        markerId: const MarkerId('TEST2'),
        position: const LatLng(50.070279687218525, 19.94116559466378),
        icon: markerIcon,
      ),
      Marker(
        markerId: const MarkerId('TEST3'),
        position: const LatLng(50.071279687218525, 19.94116559466378),
        icon: markerIcon,
      ),
      const Marker(
        markerId: MarkerId('TEST10'),
        position: LatLng(50.068179687218525, 19.94116559466378),
      ),
    };
  }

  Set<Marker> combinedMarkers() {
    return {
      Marker(
        markerId: const MarkerId('TEST'),
        position: const LatLng(50.068279687218525, 19.94116559466378),
        icon: markerIcon,
      ),
      Marker(
        markerId: const MarkerId('TEST1'),
        position: const LatLng(50.069279687218525, 19.94116559466378),
        icon: markerIcon,
      ),
      Marker(
        markerId: const MarkerId('TEST2'),
        position: const LatLng(50.070279687218525, 19.94116559466378),
        icon: markerIcon,
      ),
      Marker(
        markerId: const MarkerId('TEST3'),
        position: const LatLng(50.071279687218525, 19.94116559466378),
        icon: markerIcon,
      ),
      Marker(
        markerId: const MarkerId('TEST4'),
        position: const LatLng(50.068279687218525, 19.94516559466378),
        icon: marker2Icon,
      ),
      Marker(
        markerId: const MarkerId('TEST5'),
        position: const LatLng(50.069279687218525, 19.94416559466378),
        icon: marker2Icon,
      ),
      Marker(
        markerId: const MarkerId('TEST6'),
        position: const LatLng(50.070279687218525, 19.94316559466378),
        icon: marker2Icon,
      ),
      Marker(
        markerId: const MarkerId('TEST7'),
        position: const LatLng(50.071279687218525, 19.94216559466378),
        icon: marker2Icon,
      ),
      const Marker(
        markerId: MarkerId('TEST10'),
        position: LatLng(50.068179687218525, 19.94116559466378),
      ),
    };
  }

  Set<Marker> farmsMarkers() {
    return {
      Marker(
        markerId: const MarkerId('TEST4'),
        position: const LatLng(50.068279687218525, 19.94516559466378),
        icon: marker2Icon,
      ),
      Marker(
        markerId: const MarkerId('TEST5'),
        position: const LatLng(50.069279687218525, 19.94416559466378),
        icon: marker2Icon,
      ),
      Marker(
        markerId: const MarkerId('TEST6'),
        position: const LatLng(50.070279687218525, 19.94316559466378),
        icon: marker2Icon,
      ),
      Marker(
        markerId: const MarkerId('TEST7'),
        position: const LatLng(50.071279687218525, 19.94216559466378),
        icon: marker2Icon,
      ),
      const Marker(
        markerId: MarkerId('TEST10'),
        position: LatLng(50.068179687218525, 19.94116559466378),
      ),
    };
  }
}
