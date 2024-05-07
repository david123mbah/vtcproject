import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:testproject/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:testproject/data/data_service.dart';
import 'package:testproject/navigation_menu.dart';
import 'package:testproject/utils/constants/colors.dart';
import 'package:testproject/utils/constants/sizes.dart';
import 'package:testproject/utils/constants/text_strings.dart';
import 'package:testproject/utils/validators/validation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.userType});
  final String userType;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final DataService dataService = DataService();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController usernameTextController = TextEditingController();

  final TextEditingController passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        FBPrimaryHeaderContainer(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              TTexts.loginTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .copyWith(color: TColors.white, fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              TTexts.loginSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(color: TColors.white, fontSize: 14),
              textAlign: TextAlign.center,
            )
          ]),
        )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Text(
                widget.userType == "staff"
                    ? TTexts.staffLoginText
                    : TTexts.adminLoginText,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(
                height: TSizes.spaceBtwItems + 20,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: usernameTextController,
                        onChanged: (value) =>
                            TValidator.validateuserName(value.trim()),
                        validator: (value) =>
                            TValidator.validateuserName(value?.trim()),
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Iconsax.user,
                            ),
                            prefixIconColor: TColors.black,
                            label: Text("UserName")),
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwInputFields,
                      ),
                      TextFormField(
                        controller: passwordTextController,
                        onChanged: (value) =>
                            TValidator.validateEmail(value.trim()),
                        validator: (value) =>
                            TValidator.validatePassword(value?.trim()),
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Iconsax.eye,
                            ),
                            prefixIconColor: TColors.black,
                            label: Text(TTexts.password)),
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems - 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: Text(TTexts.rememberMe,
                                  style: TextStyle(color: TColors.black))),
                          SizedBox(
                            width: 30,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                TTexts.forgetPassword,
                                style: TextStyle(color: TColors.primary),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems + 30,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              print("loading");
                              final response = await dataService.getUser(
                                  usernameTextController.text
                                      .toUpperCase()
                                      .trim(),
                                  passwordTextController.text.trim());

                              if (response.error != null) {
                                Get.showSnackbar(GetSnackBar(
                                  borderRadius: 100,
                                  duration: Duration(seconds: 4),
                                  backgroundColor: Colors.red.withOpacity(0.8),
                                  margin: EdgeInsets.only(bottom: 10),
                                  maxWidth:
                                      0.7 * MediaQuery.of(context).size.width,
                                  title: "Error",
                                  message: response.error,
                                ));
                              } else {
                                Get.offAll(() => NavigationMenu());
                              }
                              print(response.role);
                              print(response.userName);
                            } else {
                              print("object");
                            }
                          },
                          child: Text(TTexts.logIn),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        )
      ],
    )));
  }
}

class TextForm extends StatelessWidget {
  const TextForm({
    super.key,
    this.icon,
    required this.labelText,
    required this.validator,
  });
  final IconData? icon;
  final String labelText;
  final String validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => TValidator.validateEmail(value),
      decoration: InputDecoration(
          prefix: Icon(
            icon,
          ),
          prefixIconColor: TColors.black,
          label: Text(labelText)),
    );
  }
}
