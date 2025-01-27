import 'package:loginmodule/allpackages.dart';

class SignupInputFields extends StatefulWidget {
  const SignupInputFields({Key? key}) : super(key: key);

  @override
  State<SignupInputFields> createState() => _SignupInputFieldsState();
}

class _SignupInputFieldsState extends State<SignupInputFields> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool _isPinnewHidden = true;
  bool _isPinnewHidden1 = true;

  @override
  void initState() {
    //registerController.registerController();
    super.initState();
  }

  void _togglecnewPinView() {
    setState(() {
      _isPinnewHidden = !_isPinnewHidden;
    });
  }

  void _togglecnewPinView1() {
    setState(() {
      _isPinnewHidden1 = !_isPinnewHidden1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Form(
        key: formKey,
        child: Column(
          children: [
            SizedBox(height: 3.00.hp),
            Container(
              height: 6.00.hp, width: 90.00.wp,
              // padding: const EdgeInsets.only(
              //   left: 20,
              //   right: 20,
              // ),
              decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(5)),
              child: TextFormField(
                style: forminputstyle,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(color: appcolor, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                          color: const Color(0xffC6C6C6).withOpacity(0.5),
                          width: 1),
                    ),
                    prefixIcon: Padding(
                        padding:
                            const EdgeInsets.only(top: 13, left: 5, bottom: 13),
                        child: Icon(
                          Icons.person,
                          size: MediaQuery.of(context).size.height * 0.025,
                          color: const Color(0xffC6C6C6),
                        )),
                    fillColor: const Color(0xffC6C6C6),
                    hintText: 'User Name',
                    contentPadding: const EdgeInsets.only(left: 10),
                    hintStyle: formhintstyle,
                    border: const OutlineInputBorder(
                      gapPadding: 4,
                    )),
              ),
            ),
            SizedBox(height: 3.00.hp),
            Container(
              height: 6.00.hp, width: 90.00.wp,
              // padding: const EdgeInsets.only(
              //   left: 20,
              //   right: 20,
              // ),
              decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(5)),
              child: TextFormField(
                style: forminputstyle,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(color: appcolor, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                          color: const Color(0xffC6C6C6).withOpacity(0.5),
                          width: 1),
                    ),
                    prefixIcon: Padding(
                        padding:
                            const EdgeInsets.only(top: 10, left: 5, bottom: 10),
                        child: Icon(
                          Icons.email,
                          size: MediaQuery.of(context).size.height * 0.025,
                          color: const Color(0xffC6C6C6),
                        )),
                    fillColor: const Color(0xffC6C6C6),
                    hintText: 'Email',
                    contentPadding: const EdgeInsets.only(left: 10),
                    hintStyle: formhintstyle,
                    border: const OutlineInputBorder(
                      gapPadding: 4,
                    )),
              ),
            ),
            SizedBox(height: 3.00.hp),
            Container(
              height: 6.00.hp, width: 90.00.wp,
              decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(5)),
              // padding: const EdgeInsets.only(
              //   left: 20,
              //   right: 20,
              // ),
              child: TextFormField(
                style: forminputstyle,
                obscureText: _isPinnewHidden,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: const BorderSide(color: appcolor, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                          color: const Color(0xffC6C6C6).withOpacity(0.5),
                          width: 1),
                    ),
                    prefixIcon: InkWell(
                      onTap: _togglecnewPinView,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 15, left: 5, bottom: 15),
                        child: Icon(
                          _isPinnewHidden
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: MediaQuery.of(context).size.height * 0.025,
                          color: const Color(0xffC6C6C6),
                        ),
                      ),
                    ),
                    fillColor: const Color(0xffC6C6C6),
                    hintText: 'Password',
                    contentPadding: const EdgeInsets.only(left: 10),
                    hintStyle: formhintstyle,
                    border: const OutlineInputBorder(
                      gapPadding: 4,
                    )),
              ),
            ),
            SizedBox(height: 3.00.hp),
            SizedBox(height: 3.00.hp),
            ButtonIconButton(
              press: () async {
                if (formKey.currentState!.validate()) {}
                //Get.to(const OTPScreen());
              },
              bgcolor: Colors.blue,
              bordercolor: appcolor1,
              text: 'SIGN UP',
            ),
            SizedBox(height: 3.00.hp),
          ],
        ),
      ),
    );
  }
}
