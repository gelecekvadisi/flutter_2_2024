import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenUtilDemoPage extends StatelessWidget {
  const ScreenUtilDemoPage({super.key});

  //  .sw   : Ekranın genişliği
  //  .sh   : Ekranın yüksekliği

  //  .w    : Genişliğe bağlı değer
  //  .h    : Yüksekliğe bağlı değer
  //  .r    : Yükseklik-Genişlik arasında dengeli değer

  //  .sp   : Font için ayarlanmış değerler

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Util Demo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${ScreenUtil().pixelRatio}"),
          Text("Ekran boyutları: ${1.0.sw}*${1.sh}"),

          Container(color: Colors.red, height: 100.r, width: 100.r,),

          Container(color: Colors.blue, height: 0.25.sh, width: 0.25.sw,),

            SizedBox(height: 16,),

          Text("Hello World!"),
          Text("Hello World!", style: TextStyle(fontSize: 14.sp),),
        ],
      ),
    );
  }
}