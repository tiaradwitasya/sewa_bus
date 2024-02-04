import 'package:flutter/material.dart';
import 'package:sewa_bus/utils/my_color.dart';
import 'package:sewa_bus/views/bus_antar_kota/busantarkota_screem.dart';
import 'package:sewa_bus/views/bus_bandara/busbandara_screen.dart';
import 'package:sewa_bus/views/cari_tujuan/cari_tujuan.dart';
import 'package:sewa_bus/views/sewa_bus/sewabus_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: ColorConstants.primaryColor,
          toolbarHeight: 60,
          title: Row(
            children: [
              Container(
                child: Icon(
                  Icons.person,
                  size: 35,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Text(
                'Hai, Wigo',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ],
          ),
        ),
      backgroundColor: ColorConstants.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(18),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                children: [
                  // ========= HERO SETION
                  Container(
                    decoration: const BoxDecoration(
                      color: ColorConstants.primaryColor2,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CariTujuanScreen())),
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: const Text(
                              'mau kemana hari ini?',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        const Divider(
                          color: Colors.white,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                  child: Text(
                                'Medan',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                                textAlign: TextAlign.center,
                              )),
                              VerticalDivider(
                                width: 20,
                                color: Colors.white,
                              ),
                              Expanded(
                                  child: Row(
                                children: [
                                  Icon(Icons.location_on_outlined),
                                  Text(
                                    'Peta jaringan',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // ========= ITEM SECTION
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => SewaBusScreen())),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 18, horizontal: 20),
                          decoration: const BoxDecoration(
                            color: ColorConstants.primaryColor3,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          child: const Column(
                            children: [
                              Icon(Icons.bus_alert_sharp),
                              Text('Sewa')
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => BusAntarKotaScreen())),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 18, horizontal: 20),
                          decoration: const BoxDecoration(
                            color: ColorConstants.primaryColor3,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          child: const Column(
                            children: [
                              Icon(Icons.bus_alert_sharp),
                              Text('Antar Kota')
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => BusBandaraScreen())),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 18, horizontal: 20),
                          decoration: const BoxDecoration(
                            color: ColorConstants.primaryColor3,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          child: const Column(
                            children: [
                              Icon(Icons.bus_alert_sharp),
                              Text('Bandara')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // ========= BANNER SECTION
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                    'https://plus.unsplash.com/premium_photo-1661634073903-2ecdccdfc8a2?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YnVzfGVufDB8fDB8fHww',
                                    height: 250,
                                    width: 300,
                                    fit: BoxFit.cover),
                              ),
                              Text(
                                'Omm telolet Omm..',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                    'https://plus.unsplash.com/premium_photo-1670491584909-fad9d3a4f66d?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YnVzfGVufDB8fDB8fHww',
                                    height: 250,
                                    width: 300,
                                    fit: BoxFit.cover),
                              ),
                              Text(
                                'bussss.....',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.network(
                                    'https://images.unsplash.com/photo-1632276536839-84cad7fd03b0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8YnVzfGVufDB8fDB8fHww',
                                    height: 250,
                                    width: 300,
                                    fit: BoxFit.cover),
                              ),
                              Text(
                                'Gassss....',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
