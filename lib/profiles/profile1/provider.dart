import 'package:flutteruicodiing/profiles/profile1/user.dart';

class Profile1Provider{

  static Profile getProfile(){
    return Profile(
      user:User(name: "Karim Smaili",address: "Ain kermes",about: "karim is a computer sience student at ibn khadoun university is a DSC Lead at this year"
      ),
      follower: 520,
      followers: 2880,
      friends:140,

    );
  }

}