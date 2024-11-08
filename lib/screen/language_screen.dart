import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remdy/extensions/localization_extension.dart';
import 'package:remdy/language/model/language_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../language/language_bloc/language_bloc.dart';
import '../utils/colors.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  Language? _selectedLanguage = Language.english;

  @override
  void initState() {
    SharedPreferences.getInstance();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    void toggleLanguage(String lang) {
      BlocProvider.of<LanguageBloc>(context).add(
        ChangeLanguage(
          selectedLanguage:
          lang == 'English' ? Language.english : Language.french,
        ),
      );
    }
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 17),
        child: ElevatedButton(
          onPressed: () {
            toggleLanguage(_selectedLanguage?.name??'');
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            minimumSize: const Size(360, 60),
            backgroundColor: AppColors.primary,
          ),
          child: Text(
            context.getLocalization()?.languageScreenButton ?? '',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            ),
          ),
        ),
      ),
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
          'assets/rectangle_appbar_bg.png',
          fit: BoxFit.fill,
        )),
        toolbarHeight: 90,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.secondary,
          ),
        ),
        title: Text(
          context.getLocalization()?.languageScreenTitle ?? '',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.secondary,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 26,right: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 19,),
            Container(
             width: 339,
              height: 59,
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: RadioListTile<Language>(
                controlAffinity: ListTileControlAffinity.trailing,
                value: Language.english,
                groupValue: _selectedLanguage,
                onChanged: (Language? value) {
                  setState(() {
                    _selectedLanguage = value;
                  });
                },
                title: Text(
                  'English',
                  style: TextStyle(
                    color: _selectedLanguage == Language.english
                        ? AppColors.primary
                        : AppColors.signText1,
                    fontSize: 18,
                  ),
                ),
                activeColor: AppColors.primary,
              ),
            ),
            const SizedBox(height: 17,),
            Container(
              width: 339,
              height: 59,
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: RadioListTile<Language>(
                controlAffinity: ListTileControlAffinity.trailing,
                value: Language.french,
                groupValue: _selectedLanguage,
                onChanged: (Language? value) {
                  setState(() {
                    _selectedLanguage = value;
                  });
                },
                title: Text(
                  context.getLocalization()?.languageScreenLanguageButton?? '',
                  style: TextStyle(
                    color: _selectedLanguage == Language.french
                        ? AppColors.primary
                        : AppColors.signText1,
                    fontSize: 18,
                  ),
                ),
                activeColor:AppColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}