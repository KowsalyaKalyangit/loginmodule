import '../allpackages.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  AssetImage? images;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    //  print('${widget.asset} dispose');
    images!.evict();
    super.dispose();
  }

  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 242, 244, 245),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 242, 244, 245),
          leading: Icon(Icons.arrow_circle_left_outlined),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(height: 4.00.hp),
                  Text('Register', style: toptitleStyle),
                  SizedBox(height: 1.0.hp),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          'Create your new account',
                          style: subtitleStyle,
                        ),
                      ),
                    ],
                  ),
                  const SignupInputFields(),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10, top: 2.0),
                    child: Row(
                      children: [
                        Container(
                            width: 60.0.wp,
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          value = !value;
                                        });
                                      },
                                      child: Container(
                                        height: 2.0.hp,
                                        width: 10.0.wp,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: toptitlecolor)),
                                      ),
                                    ),
                                    value
                                        ? Positioned(
                                            top: 3.5,
                                            left: 3.5,
                                            child: Container(
                                              height: 1.0.hp,
                                              width: 8.0.wp,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: toptitlecolor),
                                            ),
                                          )
                                        : Container()
                                  ],
                                ),
                                Text(
                                  'Remember me',
                                  style: subtitleStyle,
                                )
                              ],
                            )),
                        Text(
                          'Forgot Password?',
                          style: viewmore,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 3.0.hp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 30.00.wp,
                        height: 00.20.hp,
                        color: const Color(0xffE8E8E8),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8),
                        child: Text(
                          'Or continue with',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 10.00.sp,
                                  color: toptitlecolor,
                                  fontWeight: FontWeight.w800)),
                        ),
                      ),
                      Container(
                        width: 30.00.wp,
                        height: 0.20.hp,
                        color: const Color(0xffE8E8E8),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.00.hp),
                  SignupSocialLogins(),
                  SizedBox(height: 4.00.hp),
                  SizedBox(height: 1.00.hp),
                ],
              ),
            ],
          ),
        ));
  }
}
