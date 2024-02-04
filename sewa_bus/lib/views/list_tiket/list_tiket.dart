import 'package:flutter/material.dart';
import 'package:sewa_bus/utils/my_color.dart';
import 'package:sewa_bus/views/data_pemesanan_tiket/data_pemesanan_tiket.dart';

class ListTiketScreen extends StatefulWidget {
  final String asal, tujuan;
  const ListTiketScreen({super.key, required this.asal, required this.tujuan});

  @override
  State<ListTiketScreen> createState() => _ListTiketScreenState();
}

class _ListTiketScreenState extends State<ListTiketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorConstants.primaryColor3,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${widget.asal} > ${widget.tujuan} "),
              Text(
                "Rabu, 29 Nov 2023 ",
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DataPemesananTiketScreen(
                        asal: "${widget.asal}",
                        tujuan: "${widget.tujuan}",
                        harga: "Rp. 250.000,00",
                        tipe: "Executive"))),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "Luhansa coach",
                                style: TextStyle(fontSize: 18),
                              )),
                              Expanded(
                                  child: Text(
                                "Rp. 250.000,00/kursi",
                                style: TextStyle(color: Colors.red),
                                textAlign: TextAlign.end,
                              ))
                            ],
                          ),
                          Container(child: Text("Executive")),
                          SizedBox(
                            height: 15,
                          ),
                          Container(child: Text("07:00 Medan")),
                          Container(
                              child: Text(
                            "6 Jam 30 Menit",
                            style: TextStyle(fontSize: 10),
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Container(child: Text("10:30 ${widget.tujuan}")),
                        ]),
                  ),
                ),
              ),
              InkWell(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DataPemesananTiketScreen(
                        asal: "${widget.asal}",
                        tujuan: "${widget.tujuan}",
                        harga : "Rp. 100.000,00",
                        tipe: "Ekonomi"))),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "Luhansa coach",
                                style: TextStyle(fontSize: 18),
                              )),
                              Expanded(
                                  child: Text(
                                "Rp. 100.000,00/kursi",
                                style: TextStyle(color: Colors.red),
                                textAlign: TextAlign.end,
                              ))
                            ],
                          ),
                          Container(child: Text("Ekonomi")),
                          SizedBox(
                            height: 15,
                          ),
                          Container(child: Text("07:00 Medan")),
                          Container(
                              child: Text(
                            "6 Jam 30 Menit",
                            style: TextStyle(fontSize: 10),
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Container(child: Text("10:30 ${widget.tujuan}")),
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
