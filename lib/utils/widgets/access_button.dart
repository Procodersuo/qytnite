import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:qytnite/utils/colors.dart';
=======
>>>>>>> cc98bddf57ed76a4f39014b52780935257151dfe

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
<<<<<<< HEAD
            Padding(
              padding: const EdgeInsets.only(left: 3),
              child: Image.asset(
                'assets/images/pngs/no_text_logo.png',
                height: 50,
              ),
=======
            Image.asset(
              'assets/images/pngs/no_text_logo.png',
              height: 60,
>>>>>>> cc98bddf57ed76a4f39014b52780935257151dfe
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
<<<<<<< HEAD
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: MyAppColors.darkText),
=======
                  style: TextStyle(fontWeight: FontWeight.bold),
>>>>>>> cc98bddf57ed76a4f39014b52780935257151dfe
                ),
              ],
            )
          ],
        ));
  }
}
