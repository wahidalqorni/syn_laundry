import 'package:flutter/material.dart';
import 'package:syn_laundry/themes/themes.dart';
import 'package:syn_laundry/widgets/order_widget.dart';

class ListOrderPage extends StatelessWidget {
  const ListOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pemesanan", style: primaryTextStyle.copyWith(
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
      ),
      body: ListView(
        children: [

          // BARIS 1
          Container(
            margin: EdgeInsets.only(top: 40, left: 20),
            child: Text(
              "Dalam Proses",
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          // BARIS 2
          OrderWidget(
            layanan: "Laundry",
            paket: "Reguler",
            tanggal: "10/09/2024",
            status: "Diproses",
          ),
        
          // BARIS 3
          Container(
            margin: EdgeInsets.only(top: 41, left: 20),
            child: Text(
              "Riwayat Pemesanan",
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          
          // BARIS 4
          OrderWidget(
            layanan: "Laundry + Setrika",
            paket: "Express",
            tanggal: "24/08/2024",
            status: "Selesai",
          ),

          // BARIS 5
          OrderWidget(
            layanan: "Setrika",
            paket: "Express",
            tanggal: "18/08/2024",
            status: "Selesai",
          ),



        ],
      ),
    );
  }
}
