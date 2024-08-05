import 'package:flutter/material.dart';
import 'package:ltp/models/usermodel.dart';
import 'package:ltp/widgets/inbox_card.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SohamSant = UserModel(
      name: 'Soham Sant',
      bio: 'Cause Connect Contributor',
      profileImage:
          'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
      bannerImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb4eWdIockxFe4lcwv4f-IQ5PeiDHE3lKR7A&usqp=CAU',
    );
    final MihirSawai = UserModel(
      name: 'Mihir Sawai',
      bio: 'Cause Connect Contributor',
      profileImage:
          'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
      bannerImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb4eWdIockxFe4lcwv4f-IQ5PeiDHE3lKR7A&usqp=CAU',
    );
    final SanikaRithe = UserModel(
      name: 'Sanika Rithe',
      bio: 'Cause Connect Designer',
      profileImage:
          'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
      bannerImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb4eWdIockxFe4lcwv4f-IQ5PeiDHE3lKR7A&usqp=CAU',
    );
    final AdhirajSingh = UserModel(
      name: 'Adhiraj Singh',
      bio: 'Cause Connect Designer',
      profileImage:
          'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
      bannerImage:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSb4eWdIockxFe4lcwv4f-IQ5PeiDHE3lKR7A&usqp=CAU',
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InboxCard(userinbox: SohamSant),
        InboxCard(userinbox: MihirSawai),
        InboxCard(userinbox: SanikaRithe),
        InboxCard(userinbox: AdhirajSingh),
        //InboxCard(user:),
      ],
    );
  }
}
