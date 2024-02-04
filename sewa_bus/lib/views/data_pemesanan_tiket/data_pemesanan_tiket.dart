import 'package:flutter/material.dart';
import 'package:sewa_bus/utils/my_color.dart';
import 'package:sewa_bus/views/piihan_kursi/pilihan_kursi.dart';

class DataPemesananTiketScreen extends StatefulWidget {
  final String asal, tujuan, tipe, harga;
  const DataPemesananTiketScreen(
      {super.key,
      required this.asal,
      required this.tujuan,
      required this.tipe,
      required this.harga});

  @override
  State<DataPemesananTiketScreen> createState() =>
      _DataPemesananTiketScreenState();
}

class _DataPemesananTiketScreenState extends State<DataPemesananTiketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor3,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Data Pemesanan Tiket"),
            Text(
              "Rabu, 29 Nov 2023",
              style: TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(children: [
          Card(
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
                          "${widget.harga} /kursi",
                          style: TextStyle(color: Colors.red),
                          textAlign: TextAlign.end,
                        ))
                      ],
                    ),
                    Container(child: Text("${widget.tipe}")),
                    SizedBox(
                      height: 15,
                    ),
                    Container(child: Text("07:00 ${widget.asal}")),
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
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("Tipe Id"), TextField()],
              )),
              SizedBox(
                width: 80,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("No Id"), TextField()],
              )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nama Lengkap"),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Masukkan Nama Lengkap Sesuai Id"),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Tipe Penumpang"),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Dewasa / Anak-Anak"),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Anda Adalah Penumpang"),
              ),
              SizedBox(height: 20,),
              InkWell(
                 onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => PilihanKursiScreen(
                        asal: "${widget.asal}",
                        tujuan: "${widget.tujuan}",
                       ))),
                child: Container(
                  color: Color (0XFF00B60B0),
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: Row(children: [
                    Expanded(child: Text("Pilih Kursi Anda", style: TextStyle(color: Colors.white),)),
                    Container(child: Icon(Icons.arrow_right, color: Colors.white, size: 50)),
                  ]),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
