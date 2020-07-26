class User{
  String name,address,about;

  User({this.name, this.address, this.about});
}
class Profile{
  User user;
  int followers,follower,friends;
  Profile({this.user,this.followers,this.follower,this.friends});


}