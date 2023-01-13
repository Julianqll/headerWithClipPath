import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TsClip2(),
      child: Container(
        decoration: const BoxDecoration(
        color: Colors.red,
        image: DecorationImage(
          opacity: 0.2,
            image: NetworkImage(
              "https://cutewallpaper.org/21/mcu-hd-wallpapers/Every-Marvel-Mcu-Character-Wallpaper-Dual-Monitor-.jpg"
            ),
            fit: BoxFit.cover
        )
    ),
      height: 150,
      child: Padding(
        padding: EdgeInsets.only(bottom: 55, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Menu activado"),
                  ),
                )
              },
              child: const Icon(
                Icons.menu,
                color: Colors.white,
            ) ,)
,
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                "MARVEL CAST",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
            ),
            Text("")
          ],
        ),
      ),
    ),
    );
  }

}

class TsClip2 extends CustomClipper<Path> {
   @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 80);
    path.quadraticBezierTo(size.width / 6, size.height - 80, 2*(size.width)/6, size.height - 60);
    path.quadraticBezierTo(size.width/2, size.height - 40, size.width - 2*(size.width)/6, size.height - 60);
    path.quadraticBezierTo(size.width - size.width / 6, size.height - 80, size.width, size.height - 80);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }
@override
   bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
     return false;
   }
 }