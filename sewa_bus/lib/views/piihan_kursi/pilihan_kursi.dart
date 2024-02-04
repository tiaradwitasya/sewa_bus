import 'package:flutter/material.dart';
import 'package:sewa_bus/utils/my_color.dart';

class PilihanKursiScreen extends StatefulWidget {
  final asal, tujuan;
  const PilihanKursiScreen(
      {super.key, required this.asal, required this.tujuan});

  @override
  State<PilihanKursiScreen> createState() => _PilihanKursiScreenState();
}

class _PilihanKursiScreenState extends State<PilihanKursiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor3,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${widget.asal} > ${widget.tujuan}"),
            Text(
              "Rabu, 29 Nov 2023",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          Text("Pilih Kursi Anda"),
          Row(
            children: [
              Container(
                color: Colors.black,
                width: 25,
              ),
              Text("Sudah Terisi"),
            ],
          )
        ]),
      ),
    );
  }
}
