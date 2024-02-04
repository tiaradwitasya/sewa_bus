import 'package:flutter/material.dart';
import 'package:sewa_bus/utils/my_color.dart';

class DetailTiketScreen extends StatefulWidget {
  const DetailTiketScreen({super.key});

  @override
  State<DetailTiketScreen> createState() => _DetailTiketScreenState();
}

class _DetailTiketScreenState extends State<DetailTiketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor3,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Detail Tiket"),
              Text("Rabu, 29 Nov 2023 2 Kursi",
               style: TextStyle(fontSize: 12)),
              
            ],
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              "Luhansa coach",
                              style: TextStyle(fontSize: 18),
                            )),
                            Expanded(
                                child: Text(
                              "Kode Pesanan",
                              textAlign: TextAlign.end,
                            ))
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: Text("Executive")),
                            Expanded(
                                child: Text(
                              "ERKAKA23BK",
                              textAlign: TextAlign.end,
                            ))
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Expanded(child: Text("Status")),
                            Expanded(
                                child: Text(
                              "Sukses",
                              style: TextStyle(color: Colors.green),
                              textAlign: TextAlign.end,
                            ))
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: Text("Tanggal Transaksi")),
                            Expanded(
                                child: Text(
                              "28 Nov 2023 12:58",
                              textAlign: TextAlign.end,
                            ))
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(child: Text("No Transaksi")),
                            Expanded(
                                child: Text(
                              "192047294646382",
                              textAlign: TextAlign.end,
                            ))
                          ],
                        )
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Detail Pemesanan",
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
                            Container(child: Text("10:30 Rantau Parapat")),
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Detail Penumpang",
                    style: TextStyle(fontSize: 17),
                  ),
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
                                  "Wigo eLr cielgo",
                                  style: TextStyle(fontSize: 18),
                                )),
                                Expanded(
                                    child: Text(
                                  "Dewasa",
                                  style: TextStyle(color: Colors.amber),
                                  textAlign: TextAlign.end,
                                ))
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Text(
                                  "NIK - 2391946728591",
                                )),
                                Expanded(
                                    child: Text(
                                  "Lihat E-Ticket",
                                  textAlign: TextAlign.end,
                                ))
                              ],
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Detail Pembayaran",
                    style: TextStyle(fontSize: 17),
                  ),
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
                                  "Metode Pembayaran",
                                )),
                                Expanded(
                                    child: Text(
                                  "OVO",
                                  style: TextStyle(color: Colors.purple),
                                  textAlign: TextAlign.end,
                                ))
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Text(
                                  "Luhansa Coach | Executive",
                                )),
                                Expanded(
                                    child: Text(
                                  "Rp. 250.000,00",
                                  textAlign: TextAlign.end,
                                )),
                              ],
                            ),
                            SizedBox(height: 15,),
                            Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.grey,
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    "Total | 2 Tiket",
                                  )),
                                  Expanded(
                                      child: Text(
                                    "Rp. 500.000,00",
                                    textAlign: TextAlign.end,
                                  ))
                                ],
                              ),
                            )
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
