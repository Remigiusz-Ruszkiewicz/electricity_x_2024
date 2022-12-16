import 'package:flutter/material.dart';

import 'base/page_widget.dart';

class TakerPanel extends StatelessWidget {
  const TakerPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      title: 'TakerPanel',
      topWidget: Container(
        color: Colors.amber,
        width: 300,
        height: 200,
      ),
      midWidget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('data1'),
          Text('data2'),
          Text('data3'),
        ],
      ),
      bottomWidget: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('data1'),
          Text('data2'),
          Text('data3'),
        ],
      ),
    );
  }
}

// class TakerPanel extends StatefulWidget {
//   const TakerPanel({Key? key}) : super(key: key);
//
//   @override
//   State<TakerPanel> createState() => _TakerPanelState();
// }

// class _TakerPanelState extends State<TakerPanel> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const CustomAppBar(
//         title: 'TakerPanel',
//         settingVisible: false,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Center(
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 16),
//                   child: Container(
//                     color: Colors.amber,
//                     width: 300,
//                     height: 200,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text('data1'),
//                       Text('data2'),
//                       Text('data3'),
//                     ],
//                   ),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text('data1'),
//                     Text('data2'),
//                     Text('data3'),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
