import 'package:flutter/material.dart';
import 'package:ltp/utils/constants.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchProfile extends StatelessWidget {
  const SearchProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: kaccentColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Container(
            height: 100,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                  image: NetworkImage(
                      'https://img.freepik.com/free-vector/green-tone-simple-memphis_53876-116722.jpg'),
                )),
          ),
          Positioned(
            top: 50,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: ktxtwhiteColor,
                  child: const CircleAvatar(
                    radius: 38,
                    backgroundImage: NetworkImage(
                      'https://img.freepik.com/premium-vector/portrait-beautiful-women-round-frame-avatar-female-character-isolated-white-background_559729-210.jpg?w=2000',
                    ),
                  ),
                ),
                'Sanika'
                    .text
                    .minFontSize(16)
                    .fontWeight(FontWeight.w500)
                    .color(ktxtwhiteColor)
                    .make(),
                'SE IT'
                    .text
                    .minFontSize(10)
                    .fontWeight(FontWeight.w400)
                    .color(ktxtwhiteColor)
                    .make(),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: ktxtwhiteColor)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 3.0, horizontal: 5),
                    child: 'Follow'
                        .text
                        .fontWeight(FontWeight.w500)
                        .letterSpacing(1)
                        .color(ktxtwhiteColor)
                        .make(),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
