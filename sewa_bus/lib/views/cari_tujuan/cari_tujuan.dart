import 'package:flutter/material.dart';
import 'package:sewa_bus/utils/my_color.dart';
import 'package:sewa_bus/views/list_tiket/list_tiket.dart';

class CariTujuanScreen extends StatefulWidget {
  const CariTujuanScreen({super.key});

  @override
  State<CariTujuanScreen> createState() => _CariTujuanScreenState();
}

class _CariTujuanScreenState extends State<CariTujuanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor2,
        title: TextField(
          decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              prefixIcon: Icon(Icons.search),
              labelText: "Cari Kota",
              border: OutlineInputBorder()),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    ListTiketScreen(asal: "Medan",  tujuan: "Tebing Tinggi"))),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Text(
                "Medan",
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    ListTiketScreen(asal: "Tebing Tinggi",  tujuan: "Kisaran"))),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Text(
                "Tebing Tinggi",
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    ListTiketScreen(asal: "Kisaran",  tujuan: "Medan"))),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Text(
                "Kisaran",
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
          Divider(
            color: Colors.black,
          ),
          InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    ListTiketScreen(asal: "Rantau Parapat",  tujuan: "Tebing Tinggi"))),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Text(
                "Rantau Parapat",
                style: TextStyle(fontSize: 22),
              ),
            ),
          ),
          Divider(
            color: Colors.black,
          )
        ]),
      ),
    );
  }
}
