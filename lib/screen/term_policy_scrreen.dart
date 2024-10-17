import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/colors.dart';

class TermPolicyScrreen extends StatefulWidget {
  const TermPolicyScrreen({super.key});

  @override
  State<TermPolicyScrreen> createState() => _TermPolicyScrreenState();
}

class _TermPolicyScrreenState extends State<TermPolicyScrreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.secondary,
          ),
        ),
        title: Text(
          'Term & policy',
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.secondary,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 17,),
              Padding(
                padding: const EdgeInsets.only(left: 47),
                child: Text(
                  'Terms and Conditions for Remdy',
                  style: GoogleFonts.poppins(
                    fontSize:16,
                    fontWeight: FontWeight.w600,
                    color: AppColors.signText1,
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              Text(
                'Terms and Conditions\nLast updated: July 10, 2024\nPlease read these terms and conditions carefully before using Our Service.\nInterpretation and Definitions\nInterpretation\nThe words of which the initial letter is capitalized have meanings defined\nunder the following conditions. The following definitions shall have the\nsame meaning regardless of whether they appear in singular or in plural.\nDefinitions',
                style: GoogleFonts.poppins(
                  fontSize:12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'For the purposes of these Terms and Conditions:',
                style: GoogleFonts.poppins(
                  fontSize:12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'Application means the software program provided by the Company downloaded by You on any electronic device, named Remdy',
                style: GoogleFonts.poppins(
                  fontSize:10,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'Application Store means the digital distribution service operated and developed by Apple Inc. (Apple App Store) or Google Inc. (Google Play Store) in which the Application has been downloaded.',
                style: GoogleFonts.poppins(
                  fontSize:10,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'Affiliate means an entity that controls, is controlled by or is under common control with a party, where "control"means ownership of 50% or more of the shares, equity interest or other securities entitled to vote for election of directors or other managing authority.',
                style: GoogleFonts.poppins(
                  fontSize:10,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'Country refers to: British Columbia, Canada',
                style: GoogleFonts.poppins(
                  fontSize:10,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'Company (referred to as either "the Company", "We", "Us" or "Our" in this Agreement) refers to Remdy.',
                style: GoogleFonts.poppins(
                  fontSize:10,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'Device means any device that can access the Service such as a computer, a cellphone or a digital tablet.',
                style: GoogleFonts.poppins(
                  fontSize:10,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'Service refers to the Application.',
                style: GoogleFonts.poppins(
                  fontSize:10,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'Terms and Conditions (also referred as "Terms") mean these Terms and Conditions that form the entire agreement between You and the Company regarding the use of the Service. This Terms and Conditions agreement has been created with the help of the Terms and Conditions Generator.',
                style: GoogleFonts.poppins(
                  fontSize:10,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'Acknowledgment',
                style: GoogleFonts.poppins(
                  fontSize:10,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'These are the Terms and Conditions governing the use of this Service and the agreement that operates between You and the Company. These Terms and Conditions set out the rights and obligations of all users regarding the use of the Service.',
                style: GoogleFonts.poppins(
                  fontSize:10,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'Your access to and use of the Service is conditioned on Your acceptance of and compliance with these Terms and Conditions. These Terms and Conditions apply to all visitors, users and others who access or use the Service.',
                style: GoogleFonts.poppins(
                  fontSize:10,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'By accessing or using the Service You agree to be bound by these Terms\nand Conditions. If You disagree with any part of these Terms and\nConditions then You may not access the Service.\nYou represent that you are over the age of 18. The Company does not\npermit those under 18 to use the Service.\nLinks to Other Websites',
                style: GoogleFonts.poppins(
                  fontSize:10,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'Our Service may contain links to third-party web sites or services that are not owned or controlled by the Company.',
                style: GoogleFonts.poppins(
                  fontSize:10,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'The Company has no control over, and assumes no responsibility for, the content, privacy policies, or practices of any third party web sites or services. You further acknowledge and agree that the Company shall not be responsible or liable, directly or indirectly, for any damage or loss caused or alleged to be caused by or in connection with the use of or reliance on any such content, goods or services available on or through any such web sites or services.',
                style: GoogleFonts.poppins(
                  fontSize:10,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'We strongly advise You to read the terms and conditions and privacy policies of any third-party web sites or services that You visit.\nTermination',
                style: GoogleFonts.poppins(
                  fontSize:10,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'We may terminate or suspend Your access immediately, without prior notice or liability, for any reason whatsoever, including without limitation if You breach these Terms and Conditions.',
                style: GoogleFonts.poppins(
                  fontSize:10,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'Upon termination, Your right to use the Service will cease immediately.\nLimitation of Liability',
                style: GoogleFonts.poppins(
                  fontSize:10,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                "Notwithstanding any damages that You might incur, the entire liability of\nthe Company and any of its suppliers under any provision of this Terms\nand Your exclusive remedy for all of the foregoing shall be limited to the\namount actually paid by You through the Service or 100 USD if You haven't\npurchased anything through the Service.",
                style: GoogleFonts.poppins(
                  fontSize:9,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                "To the maximum extent permitted by applicable law, in no event shall the Company or its suppliers be liable for any special, incidental, indirect, or consequential damages whatsoever (including, but not limited to, damages for loss of profits, loss of data or other information, for business interruption, for personal injury, loss of privacy arising out of or in any way related to the use of or inability to use the Service, third-party software and/or third-party hardware used with the Service, or otherwise in connection with any provision of this Terms), even if the Company or any supplier has been advised of the possibility of such damages and even if the remedy fails of its essential purpose.",
                style: GoogleFonts.poppins(
                  fontSize:9,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                "Some states do not allow the exclusion of implied warranties or limitation of liability for incidental or consequential damages, which means that some of the above limitations may not apply. In these states, each party's liability will be limited to the greatest extent permitted by law.",
                style: GoogleFonts.poppins(
                  fontSize:9,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'AS IS" and "AS AVAILABLE" Disclaimer',
                style: GoogleFonts.poppins(
                  fontSize:9,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'The Service is provided to You "AS IS" and "AS AVAILABLE" and with all faults and defects without warranty of any kind. To the maximum extent permitted under applicable law, the Company, on its own behalf and on behalf of its Affiliates and its and their respective licensors and service providers, expressly disclaims all warranties, whether express, implied, statutory or otherwise, with respect to the Service, including all implied warranties of merchantability, fitness for a particular purpose, title and non-infringement, and warranties that may arise out of course of dealing, course of performance, usage or trade practice. Without limitation to the foregoing, the Company provides no warranty or undertaking, and makes no representation of any kind that the Service will meet Your requirements, achieve any intended results, be compatible or work with any other software, applications, systems or services, operate without interruption, meet any performance or reliability standards or be error free or that any errors or defects can or will be corrected.',
                style: GoogleFonts.poppins(
                  fontSize:9,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                "Without limiting the foregoing, neither the Company nor any of the company's provider makes any representation or warranty of any kind, express or implied: (i) as to the operation or availability of the Service, or the information, content, and materials or products included thereon; (ii) that the Service will be uninterrupted or error-free; (iii) as to the accuracy, reliability, or currency of any information or content provided through the Service; or (iv) that the Service, its servers, the content, or e-mails sent from or on behalf of the Company are free of viruses, scripts, trojan horses, worms, malware, timebombs or other harmful components.",
                style: GoogleFonts.poppins(
                  fontSize:9,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'Some jurisdictions do not allow the exclusion of certain types of warranties or limitations on applicable statutory rights of a consumer, so some or all of the above exclusions and limitations may not apply to You. But in such a case the exclusions and limitations set forth in this section shall be applied to the greatest extent enforceable under applicable law.',
                style: GoogleFonts.poppins(
                  fontSize:9,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                "Governing Law\nThe laws of the Country, excluding its conflicts of law rules, shall govern this Terms and Your use of the Service. Your use of the Application may also be subject to other local, state, national, or international laws.",
                style: GoogleFonts.poppins(
                  fontSize:9,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                "Disputes Resolution\nIf You have any concern or dispute about the Service, You agree to first try to resolve the dispute informally by contacting the Company.\nFor European Union (EU) Users",
                style: GoogleFonts.poppins(
                  fontSize:9,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                "If You are a European Union consumer, you will benefit from any mandatory provisions of the law of the country in which You are resident.\nUnited States Legal Compliance",
                style: GoogleFonts.poppins(
                  fontSize:9,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                'You represent and warrant that (i) You are not located in a country that is subject to the United States government embargo, or that has been designated by the United States government as a "terrorist supporting" country, and (ii) You are not listed on any United States government list of prohibited or restricted parties.',
                style: GoogleFonts.poppins(
                  fontSize:9,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
               "Severability and Waiver\nSeverability\nIf any provision of these Terms is held to be unenforceable or invalid, such provision will be changed and interpreted to accomplish the objectives of such provision to the greatest extent possible under applicable law and the remaining provisions will continue in full force and effect.",
                style: GoogleFonts.poppins(
                  fontSize:9,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              const SizedBox(height: 15,),
              Text(
                "Changes to These Terms and Conditions\nWe reserve the right, at Our sole discretion, to modify or replace these Terms at any time. If a revision is material We will make reasonable efforts to provide at least 30 days' notice prior to any new terms taking effect. ",
                style: GoogleFonts.poppins(
                  fontSize:9,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                "What constitutes a material change will be determined at Our sole discretion.\nBy continuing to access or use Our Service after those revisions become effective, You agree to be bound by the revised terms. If You do not agree to the new terms, in whole or in part, please stop using the website and the Service.",
                style: GoogleFonts.poppins(
                  fontSize:9,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
              Text(
                "Contact Us\nIf you have any questions about these Terms and Conditions, You can contact us:\nBy email: dhara1521@gmail.com\nGenerated using TermsFeed Privacy Policy Generator",
                style: GoogleFonts.poppins(
                  fontSize:9,
                  fontWeight: FontWeight.w600,
                  color: AppColors.signUpTextButtonRadius,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
