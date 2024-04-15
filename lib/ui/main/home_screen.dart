import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hubtel_coding_challenge/ui/common/animated_toggle_button.dart';
import 'package:hubtel_coding_challenge/utils/colors.dart';
import 'package:hubtel_coding_challenge/utils/image_assets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 32),
                Center(
                  child: AnimatedToggleButton(
                    values: const [
                      'History',
                      'Transaction Summary',
                    ],
                    onToggleCallback: (_) {},
                  ),
                ),
                const SizedBox(height: 8),
                const AppSeparator(),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: GoogleFonts.nunitoSans(),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.greyColor,
                          border: InputBorder.none,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.only(
                              top: 16,
                              bottom: 16,
                            ),
                            child: SvgPicture.asset(
                              ImageAssets.icSearch,
                            ),
                          ),
                          hintText: 'Search',
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    SvgPicture.asset(ImageAssets.icFilter),
                  ],
                ),
                const SizedBox(height: 32),
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: AppColors.greyColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'May 24, 2022',
                        style: GoogleFonts.nunitoSans(
                          textStyle: const TextStyle(
                            fontSize: 10,
                            color: AppColors.greyTextColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Material(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(
                      color: AppColors.greyColor,
                    ),
                  ),
                  child: Ink(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '14:25PM',
                          style: GoogleFonts.nunitoSans(
                            textStyle: const TextStyle(
                              fontSize: 12,
                              color: AppColors.greyTextColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              ImageAssets.icMtn,
                              height: 39,
                              width: 39,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Emmanuel Rockson Kwabena Uncle Ebo',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.nunitoSans(
                                      textStyle: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    '02440000000',
                                    style: GoogleFonts.nunitoSans(
                                      textStyle: const TextStyle(
                                        fontSize: 12,
                                        color: AppColors.greyTextColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: AppColors.lightGreen,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'May 24, 2022',
                                    style: GoogleFonts.nunitoSans(
                                      textStyle: const TextStyle(
                                        fontSize: 10,
                                        color: AppColors.green,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        const AppSeparator(),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            SvgPicture.asset(
                              ImageAssets.icPerson,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Personal',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.nunitoSans(
                                textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Container(
                              height: 5,
                              width: 5,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.greyColor,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              'Take cool your heart wai',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.nunitoSans(
                                textStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const Spacer(),
                            SvgPicture.asset(
                              ImageAssets.icStar,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(left: 120, right: 120, bottom: 20),
              child: HomeSendButton(),
            ),
          )
        ],
      ),
    );
  }
}

class AppSeparator extends StatelessWidget {
  const AppSeparator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1,
      color: AppColors.greyColor,
    );
  }
}

class HomeSendButton extends StatelessWidget {
  const HomeSendButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      color: AppColors.accentColor,
      borderRadius: BorderRadius.circular(4),
      child: Ink(
        decoration: BoxDecoration(
          color: AppColors.accentColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(4),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 32,
                  width: 32,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: AppColors.accentColor,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  'SEND NEW',
                  style: GoogleFonts.nunitoSans(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
