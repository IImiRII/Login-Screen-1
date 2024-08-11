import 'package:flutter/material.dart';
import 'package:login_test_app/colors.dart';
import 'package:login_test_app/login_page.dart';
import 'package:login_test_app/main.dart';
import 'all_text.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  @override
  Widget build(BuildContext context) {
    const edgeInsets = EdgeInsets.only(left: 20, top: 10, right: 20.00);
    const edgeInsets2x = EdgeInsets.only(left: 20, top: 20, right: 20.00);

    return Scaffold(
      backgroundColor: AllColors().backgroundColor,
      appBar: AppBar(
        backgroundColor: AllColors().backgroundColor,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const loginTestApp(),
                ),
              );
            },
            icon: const Icon(Icons.chevron_left_rounded)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 50),
            const SignUpText(),
            const WelcomeText(),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                AllText().name,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const NameTextField(),
            Padding(
              padding: edgeInsets,
              child: Text(
                AllText().email,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const EmailAdressText(),
            Padding(
              padding: edgeInsets,
              child: Text(
                AllText().password,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const PasswordTextField(
              edgeInsets: edgeInsets,
              textInputAction: TextInputAction.next,
            ),
            Padding(
              padding: edgeInsets,
              child: Text(
                AllText().confirmPassword,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const PasswordTextField(
              edgeInsets: edgeInsets,
              textInputAction: TextInputAction.done,
            ),
            const Padding(padding: edgeInsets2x),
            const LoginButton(),
            const Padding(padding: edgeInsets2x),
            const ContinueWithGoogle(),
          ],
        ),
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    super.key,
    required this.edgeInsets,
    required this.textInputAction,
  });

  final EdgeInsets edgeInsets;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: edgeInsets,
      child: TextField(
        autofillHints: const [AutofillHints.newPassword],
        textInputAction: textInputAction,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          filled: true,
          fillColor: AllColors().textFieldBackColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class EmailAdressText extends StatelessWidget {
  const EmailAdressText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, right: 20.00),
      child: TextField(
        autofillHints: const [AutofillHints.name],
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: AllText().hintText,
          hintStyle: TextStyle(color: AllColors().greyOpacity),
          filled: true,
          fillColor: AllColors().textFieldBackColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class NameTextField extends StatelessWidget {
  const NameTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, right: 20.0),
      child: TextField(
        autofillHints: const [AutofillHints.name],
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          filled: true,
          fillColor: AllColors().textFieldBackColor,
        ),
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20),
      child: Text(
        AllText().welcome,
        style: Theme.of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(color: AllColors().blackOpacity),
      ),
    );
  }
}

class SignUpText extends StatelessWidget {
  const SignUpText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text(
        AllText().signUp,
        style: Theme.of(context)
            .textTheme
            .headlineLarge
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
