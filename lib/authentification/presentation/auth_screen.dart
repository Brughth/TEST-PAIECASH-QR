import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_paiecash/shared/widgets/app_button.dart';
import 'package:test_paiecash/shared/widgets/app_snackbar.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: AnnotatedRegion(
        value: SystemUiOverlayStyle.light.copyWith(
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.transparent,
        ),
        child: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).padding.top + 20,
                child: SvgPicture.asset(
                  'assets/images/auth_bg_1.svg',
                ),
              ),
              Positioned(
                top: screenHeight * .12,
                right: 0,
                child: SvgPicture.asset(
                  'assets/images/auth_bg_2.svg',
                ),
              ),
              Positioned(
                bottom: screenHeight * .27,
                right: 0,
                child: SvgPicture.asset(
                  'assets/images/auth_bg_3.svg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Spacer(flex: 3),
                    ZoomIn(
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/images/logo.svg',
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Text.rich(
                      TextSpan(
                        text: 'Payez automatiquement vos facture via ',
                        children: [
                          TextSpan(
                            text: 'paiecash',
                            style: TextStyle(
                              color: Color(0xff006A36),
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                    const Spacer(),
                    AppButton(
                      bgColor: const Color(0xff2FAE43),
                      child: const Text(
                        'Creer sont compte',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                      onPressed: () {
                        AppSnackBar.showInfos(
                          message: 'Coming soon',
                          context: context,
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    AppButton(
                      bgColor: const Color(0xff2FAE43),
                      child: const Text(
                        'Connexion',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                      onPressed: () {
                        AppSnackBar.showInfos(
                          message: 'Coming soon',
                          context: context,
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: AppButton(
                            borderColor: Colors.blueAccent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5,
                                    left: 5,
                                    bottom: 5,
                                    right: 3,
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/icons/facebook.svg',
                                  ),
                                ),
                                //const SizedBox(width: 10),
                                const Text(
                                  'Facebook',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              AppSnackBar.showInfos(
                                message: 'Coming soon',
                                context: context,
                              );
                            },
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: AppButton(
                            borderColor: Colors.green,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/icons/google.svg'),
                                const SizedBox(width: 20),
                                const Text(
                                  'Google',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              AppSnackBar.showInfos(
                                message: 'Coming soon',
                                context: context,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
