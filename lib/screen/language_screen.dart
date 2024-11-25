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
  Language? _isSelectedLanguage;

  void _setSelectedLanguage() async{
    var pref =await SharedPreferences.getInstance();
    if(pref.getString(languagePrefsKey) == 'fr'){
      _isSelectedLanguage = Language.french;
    }else{
      _isSelectedLanguage = Language.english;
    }
  }
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      _setSelectedLanguage();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {

    void toggleLanguage(String lang) {
      BlocProvider.of<LanguageBloc>(context).add(
        ChangeLanguage(
          selectedLanguage:
          lang == 'english' ? Language.english : Language.french,
        ),
      );
    }
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 16, right: 17,bottom: 24),
        child: ElevatedButton(
          onPressed: () {
            toggleLanguage(_isSelectedLanguage?.name??'');
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: AppColors.primary,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
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
      ),
      appBar: AppBar(
        flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
          'assets/rectangle_appbar_bg.png',
          fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
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
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 19,),
            Card(
              color: AppColors.backgroundColor,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 59,
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: RadioListTile<Language>(
                  controlAffinity: ListTileControlAffinity.trailing,
                  value: Language.english,
                  groupValue: _isSelectedLanguage,
                  onChanged: (Language? value) {
                    setState(() {
                      _isSelectedLanguage = value;
                    });
                  },
                  title: Text(
                    'English',
                    style: TextStyle(
                      color: _isSelectedLanguage == Language.english
                          ? AppColors.primary
                          : AppColors.signText1,
                      fontSize: 18,
                    ),
                  ),
                  activeColor: AppColors.primary,
                ),
              ),
            ),
            const SizedBox(height: 17,),
            Card(
              color: AppColors.backgroundColor,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 59,
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: RadioListTile<Language>(
                  controlAffinity: ListTileControlAffinity.trailing,
                  value: Language.french,
                  groupValue: _isSelectedLanguage,
                  onChanged: (Language? value) {
                    setState(() {
                      _isSelectedLanguage = value;
                    });
                  },
                  title: Text(
                    context.getLocalization()?.languageScreenLanguageButton?? '',
                    style: TextStyle(
                      color: _isSelectedLanguage == Language.french
                          ? AppColors.primary
                          : AppColors.signText1,
                      fontSize: 18,
                    ),
                  ),
                  activeColor:AppColors.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}