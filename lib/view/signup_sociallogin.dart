import '../allpackages.dart';

class SignupSocialLogins extends StatefulWidget {
  const SignupSocialLogins({Key? key}) : super(key: key);

  @override
  State<SignupSocialLogins> createState() => _SignupSocialLoginsState();
}

class _SignupSocialLoginsState extends State<SignupSocialLogins> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0.wp,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: screenbackground,
            child: Image.asset(
              'assets/images/google.png',
              height: 25,
              width: 25,
            ),
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: screenbackground,
            child: Image.asset(
              'assets/images/facebook.png',
              height: 25,
              width: 25,
            ),
          ),
          CircleAvatar(
            radius: 25,
            backgroundColor: screenbackground,
            child: Image.asset(
              'assets/images/google.png',
              height: 25,
              width: 25,
            ),
          ),
        ],
      ),
    );
  }
}
