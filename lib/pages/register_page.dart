import 'package:flutter/material.dart';
import 'package:syn_laundry/pages/beranda_page.dart';
import 'package:syn_laundry/pages/login_page.dart';
import 'package:syn_laundry/themes/themes.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // baris 1 : AppBar
      appBar: AppBar(
        centerTitle: true, //untuk menempatkan title di tengah2
        title: Text(
          "Persiapkan Akunmu",
          style: primaryTextStyle.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: Container(
            margin: EdgeInsets.only(left: 10),
            child: Image.asset('assets/ic-back.png')),
      ),
      body: ListView(
        children: [
          // baris 2 : KOLOM INPUT
          Container(
            margin: EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  // maxLines: 4,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: "Masukkan Username",
                    hintStyle: secondaryTextStyle,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 37,
                ),
                TextFormField(
                  // maxLines: 4,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: "Masukkan Nomer Telepon",
                    hintStyle: secondaryTextStyle,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 37,
                ),
                TextFormField(
                  // maxLines: 4,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Masukkan Email",
                    hintStyle: secondaryTextStyle,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 37,
                ),
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    suffix: Image.asset(
                      'assets/ic-eye.png',
                      width: 20,
                    ),
                    hintText: "Masukkan Password",
                    hintStyle: secondaryTextStyle,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: greyColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 37,
                ),
                // Spacer(),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF4ABF92),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => BerandaPage() ));
                    },
                    child: Text(
                      "Daftar",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 20,
          ),
          // baris 4 : BELUM PUNYA AKUN?
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sudah punya akun?",
                style: secondaryTextStyle.copyWith(fontSize: 16),
              ),
              SizedBox(
                width: 2,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage() ));
                },
                child: Text(
                  "Login",
                  style: greenTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
