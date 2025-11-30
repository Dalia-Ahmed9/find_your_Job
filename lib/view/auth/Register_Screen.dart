import 'package:find_job/control/auth_Cubit/auth_Cubit.dart';
import 'package:find_job/control/auth_Cubit/auth_state.dart';
import 'package:find_job/utils/colors.dart';
import 'package:find_job/view/auth/continue_with.dart';
import 'package:find_job/view/home/home_screen.dart';
import 'package:find_job/widgets/Icons_Row.dart';
import 'package:find_job/widgets/icon.dart';
import 'package:find_job/widgets/second_button.dart';
import 'package:find_job/widgets/text_field.dart';
import 'package:find_job/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          //loading state
          if (state is AuthLoadingState) {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (_) => const Center(child: CircularProgressIndicator()),
            );
          }
          //success state
          if (state is AuthSuccessState) {
            Navigator.of(context).pop();
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const HomeScreen()),
            );
          }
          //error state
          if (state is AuthErrorState) {
            Navigator.of(context).pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error), backgroundColor: Colors.red),
            );
          }
        },
        //register ui
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusedIcon(icon: Icon(Icons.arrow_back)),
                    SizedBox(height: 50),
                    texts(text: 'Register Account', size: 20, mainfont: true),
                    SizedBox(height: 10),
                    texts(
                      text: 'Fill your details or continue with social media',
                      size: 18,
                      mainfont: false,
                    ),
                    SizedBox(height: 30),
                    MyTextField(
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return 'Please enter your name';
                        } else {
                          return null;
                        }
                      },
                      fieldName: 'Full Name',
                      myController: nameController,
                      myIcon: Icons.person,
                    ),
                    SizedBox(height: 20),
                    MyTextField(
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return 'Please enter your name';
                        } else {
                          return null;
                        }
                      },
                      fieldName: 'Email',
                      myController: emailController,
                      myIcon: Icons.email,
                    ),
                    SizedBox(height: 20),
                    MyTextField(
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return 'Please enter your name';
                        } else {
                          return null;
                        }
                      },
                      fieldName: 'Password',
                      myController: passwordController,
                      myIcon: Icons.remove_red_eye,
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: SecondButton(
                        onTap: () {
                          if (formKey.currentState!.validate()) {
                            context.read<AuthCubit>().createUserByFirebase(
                              email: emailController.text,
                              password: passwordController.text,
                            );
                          }
                        },
                        content: Icon(
                          Icons.arrow_forward,
                          color: AppColors.whiteColor,
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    ContinueWithsocialMedia(),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconsRow(imagename: 'asset/images/search.png'),
                        SizedBox(width: 10),
                        IconsRow(imagename: 'asset/images/facebook.png'),
                      ],
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: texts(
                        text:
                            'By continuing your confirm that you agree with  ',
                        size: 12,
                        mainfont: false,
                      ),
                    ),
                    Center(
                      child: texts(
                        text: '  our Term and Condition  ',
                        size: 12,
                        mainfont: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
