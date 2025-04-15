import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/extensions/localization_extension.dart';

import '../utils/colors.dart';

class EnterAddress extends StatefulWidget {
  const EnterAddress({super.key});

  @override
  State<EnterAddress> createState() => _EnterAddressState();
}

class _EnterAddressState extends State<EnterAddress> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 450,
                width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: AppColors.secondary,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          context.getLocalization()?.address ?? '',
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            color: AppColors.bottomText,
                          ),
                        ),
                        const SizedBox(
                          width: 17,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.cancel_outlined,
                            weight: 19,
                            color: AppColors.signText1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 21,
                    ),
                    Container(
                        width:  MediaQuery.of(context).size.width,
                        // height:  MediaQuery.of(context).size.height,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            color: AppColors.secondary),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 17, right: 17),
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: const Icon(Icons.cancel_outlined),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)),
                              ),
                              labelText: context.getLocalization()?.area??'',
                              labelStyle: const TextStyle(
                                  color: AppColors.bottomTextField),
                            ),
                            obscureText: true,
                          ),
                        )),
                    const SizedBox(
                      height: 21,
                    ),
                    Container(
                        width:  MediaQuery.of(context).size.width,
                        // height:  MediaQuery.of(context).size.height,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            color: AppColors.secondary),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 17, right: 17),
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: const Icon(Icons.cancel_outlined),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)),
                              ),
                              labelText: context.getLocalization()?.building??'',
                              labelStyle: const TextStyle(
                                  color: AppColors.bottomTextField),
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 21,
                    ),
                    Container(
                        width:  MediaQuery.of(context).size.width,
                        // height:  MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: AppColors.secondary),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 17, right: 17),
                          child: TextField(
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: const Icon(Icons.cancel_outlined),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)),
                              ),
                              labelText: context.getLocalization()?.landMark??'',
                              labelStyle: const TextStyle(
                                  color: AppColors.bottomTextField),
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 94,
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 17, right: 16),
                      child: SizedBox(
                        width:  MediaQuery.of(context).size.width,
                        height: 52,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            context.getLocalization()?.confirmAddress??'',
                            style: GoogleFonts.poppins(
                              fontSize: 19,
                              fontWeight: FontWeight.w400,
                              color: AppColors.secondary,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            context.getLocalization()?.location??'',
            // 'Barrie',
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w800,
              color: AppColors.secondary,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            context.getLocalization()?.country??'',
            // 'Ontario, Canada',
            style: GoogleFonts.poppins(
              fontSize: 13,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
