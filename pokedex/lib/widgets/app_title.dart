import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';

class App_Title extends StatelessWidget {
  String path = 'images/pokeball.png';
  App_Title({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          ScreenUtil().orientation == Orientation.portrait ? 0.15.sh : 0.15.sw,
      child: Container(
        height: ScreenUtil().orientation == Orientation.portrait
            ? 0.15.sh
            : 0.15.sw,
        color: Colors.transparent,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: Fontlarvedetaylar.getDefaultPadding(),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Pokedex',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize:
                            ScreenUtil().orientation == Orientation.portrait
                                ? 48.sp
                                : (30 * 1.5).sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                path,
                width: ScreenUtil().orientation == Orientation.portrait
                    ? 0.2.sh
                    : 0.2.sw,
                fit: BoxFit.fitWidth,
              ),
            )
          ],
        ),
      ),
    );
  }
}
