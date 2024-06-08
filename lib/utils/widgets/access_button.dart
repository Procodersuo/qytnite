import 'package:flutter/material.dart';
import 'package:qytnite/utils/colors.dart';

class AccessButton extends StatelessWidget {
  const AccessButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Color(0xfffC8DEF9), borderRadius: BorderRadius.circular(40)),
        height: 55,
        width: 160,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 3),
              child: Image.asset(
                'assets/images/pngs/no_text_logo.png',
                height: 50,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Image.asset(
                    'assets/images/pngs/text_only_logo.png',
                    height: 18,
                  ),
                ),
                Text(
                  'Acess',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: MyAppColors.darkText),
                ),
              ],
            )
          ],
        ));
  }
}
