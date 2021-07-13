/**************************************************************************
 |                                                                         
 |           NATIONAL SURVEY OF FAMILY GROWTH (NSFG), 2017-2019
 |
 |                     STATA Pregnancy Data Setup File
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do nsfg_pregnancy_setup.do)
 |
 **************************************************************************/


set more off  /* This prevents the Stata output viewer from pausing the
                 process */

/****************************************************

Section 1: File Specifications
   This section assigns local macros to the necessary files.
   Please edit:
        "data-filename" ==> The name of data file downloaded from NCHS
        "dictionary-filename" ==> The name of the dictionary file downloaded.
        "stata-datafile" ==> The name you wish to call your Stata data file.

   Note:  We assume that the raw data, dictionary, and setup (this do file) all
          reside in the same directory (or folder).  If that is not the case
          you will need to include paths as well as filenames in the macros.

********************************************************/

local raw_data "data-filename"
local dict "dictionary-filename"
local outfile "stata-datafile"

/********************************************************

Section 2: Infile Command

This section reads the raw data into Stata format.  If Section 1 was defined
properly, there should be no reason to modify this section.  These macros
should inflate automatically.

**********************************************************/

infile using `dict', using (`raw_data') clear


/*********************************************************

Section 3: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Survey of Family Growth (NSFG), 2015-2017"

#delimit ;
 label define pregordr
   1 "1ST PREGNANCY"
   2 "2ND PREGNANCY"
   3 "3RD PREGNANCY"
   4 "4TH PREGNANCY"
   5 "5TH PREGNANCY"
   6 "6TH PREGNANCY"
   7 "7TH PREGNANCY"
   8 "8TH PREGNANCY"
   9 "9TH PREGNANCY"
  10 "10TH PREGNANCY"
  11 "11TH PREGNANCY"
  12 "12TH PREGNANCY"
  13 "13TH PREGNANCY"
  14 "14TH PREGNANCY"
  15 "15TH PREGNANCY"
  16 "16TH PREGNANCY"
  17 "17TH PREGNANCY"
  18 "18TH PREGNANCY"
  19 "19TH PREGNANCY"
  20 "20TH PREGNANCY";

 label define moscurrp
  98 "Refused"
  99 "Don't know";

 label define PREGEND1
   1 "Miscarriage"
   2 "Stillbirth"
   3 "Abortion"
   4 "Ectopic or tubal pregnancy"
   5 "Live birth by Cesarean section"
   6 "Live birth by vaginal delivery"
   8 "Refused"
   9 "Don't know";

 label define PREGEND2
   1 "Miscarriage"
   2 "Stillbirth"
   3 "Abortion"
   4 "Ectopic or tubal pregnancy"
   5 "Live birth by Cesarean section"
   6 "Live birth by vaginal delivery"
   8 "Refused"
   9 "Don't know";

 label define hpageend
   1 "Under 20 years"
   2 "20-24 years"
   3 "25-29 years"
   4 "30-34 years"
   5 "35-39 years"
   6 "40 years or older"
  98 "Refused"
  99 "Don't know";

 label define kidage
   0 "Less than 1 year"
   1 "1 year old"
   2 "2 years old"
   3 "3 years old"
   4 "4 years old"
   5 "5 years old"
   6 "6-11 years old"
   7 "12-17 years old"
   8 "18 years or older";

 label define hpagelb
   1 "Under 20 years"
   2 "20-24 years"
   3 "25-29 years"
   4 "30-34 years"
   5 "35-39 years"
   6 "40 years or older"
  98 "Refused"
  99 "Don't know";

 label define PAYBIRTH1
   1 "Insurance"
   2 "Co-payment or out-of-pocket payment"
   3 "Medicaid"
   4 "No payment required"
   5 "Some other way"
   8 "Refused"
   9 "Don't know";

 label define PAYBIRTH2
   1 "Insurance"
   2 "Co-payment or out-of-pocket payment"
   3 "Medicaid"
   4 "No payment required"
   5 "Some other way"
   8 "Refused"
   9 "Don't know";

 label define PAYBIRTH3
   1 "Insurance"
   2 "Co-payment or out-of-pocket payment"
   3 "Medicaid"
   4 "No payment required"
   5 "Some other way"
   8 "Refused"
   9 "Don't know";

 label define csecprim
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CSECMED1
   1 "Labor was taking too long"
   2 "Maternity care provider concerned that baby was too big"
   3 "Baby was in the wrong position (e.g, breech)"
   4 "Maternity care provider concerned about your health"
   5 "Maternity care provider concerned about your baby's health"
   6 "Some other medical reason"
   7 "There was no medical reason"
   8 "Refused"
   9 "Don't know";

 label define CSECMED2
   1 "Labor was taking too long"
   2 "Maternity care provider concerned that baby was too big"
   3 "Baby was in the wrong position (e.g, breech)"
   4 "Maternity care provider concerned about your health"
   5 "Maternity care provider concerned about your baby's health"
   6 "Some other medical reason"
   7 "There was no medical reason"
   8 "Refused"
   9 "Don't know";

 label define CSECMED3
   1 "Labor was taking too long"
   2 "Maternity care provider concerned that baby was too big"
   3 "Baby was in the wrong position (e.g, breech)"
   4 "Maternity care provider concerned about your health"
   5 "Maternity care provider concerned about your baby's health"
   6 "Some other medical reason"
   7 "There was no medical reason"
   8 "Refused"
   9 "Don't know";

 label define CSECMED4
   1 "Labor was taking too long"
   2 "Maternity care provider concerned that baby was too big"
   3 "Baby was in the wrong position (e.g, breech)"
   4 "Maternity care provider concerned about your health"
   5 "Maternity care provider concerned about your baby's health"
   6 "Some other medical reason"
   7 "There was no medical reason"
   8 "Refused"
   9 "Don't know";

 label define CSECMED5
   1 "Labor was taking too long"
   2 "Maternity care provider concerned that baby was too big"
   3 "Baby was in the wrong position (e.g, breech)"
   4 "Maternity care provider concerned about your health"
   5 "Maternity care provider concerned about your baby's health"
   6 "Some other medical reason"
   7 "There was no medical reason"
   8 "Refused"
   9 "Don't know";

 label define csecplan
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define priorsmk
   0 "None"
   1 "About one cigarette a day or less"
   2 "Just a few cigarettes a day (2-4)"
   3 "About half a pack a day (5-14)"
   4 "About a pack a day (15-24)"
   5 "About 1 1/2 packs a day (25-34)"
   6 "About 2 packs a day (35-44)"
   7 "More than 2 packs a day (45 or more)"
   8 "Refused"
   9 "Don't know";

 label define postsmks
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define npostsmk
   1 "About one cigarette a day or less"
   2 "Just a few cigarettes a day (2-4)"
   3 "About half a pack a day (5-14)"
   4 "About a pack a day (15-24)"
   5 "About 1 1/2 packs a day (25-34)"
   6 "About 2 packs a day (35-44)"
   7 "More than 2 packs a day (45 or more)"
   8 "Refused"
   9 "Don't know";

 label define ANYNURSE1
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FEDSOLID1
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FRSTEATD_N1
 998 "Refused"
 999 "Don't know";

 label define FRSTEATD_P1
   1 "Months"
   2 "Weeks"
   3 "Days"
   8 "Refused"
   9 "Don't know";

 label define FRSTEATD1
   0 "LESS THAN 1 MONTH"
   1 "1 MONTH"
   2 "2 MONTHS"
   3 "3 MONTHS"
   4 "4 MONTHS"
   5 "5 MONTHS"
   6 "6 MONTHS"
  98 "Refused"
  99 "Don't know";

 label define QUITNURS1
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define MDSOLID1
   1 "yes"
   5 "no"
   9 "DON'T KNOW";

 label define WHNSOLID1
   1 "Before 4 months of age"
   2 "4 to 5 months of age"
   3 "6 months of age or older"
   8 "Refused"
   9 "Don't know";

 label define MDNUTRIT1_1
   1 "Offering foods with many different tastes and textures"
   2 "Not forcing child to finish food or bottles, even if not interested or didn't have much"
   3 "Offering a variety of fruits and vegetables"
   4 "Limiting foods and drinks with added sugar (such as candy, cookies, soda, juice)"
   5 "Limiting eating meals in front of tv or other electronic devices"
   6 "None of the above topics"
   8 "Refused"
   9 "Don't know";

 label define MDNUTRIT1_2
   1 "Offering foods with many different tastes and textures"
   2 "Not forcing child to finish food or bottles, even if not interested or didn't have much"
   3 "Offering a variety of fruits and vegetables"
   4 "Limiting foods and drinks with added sugar (such as candy, cookies, soda, juice)"
   5 "Limiting eating meals in front of tv or other electronic devices"
   6 "None of the above topics"
   8 "Refused"
   9 "Don't know";

 label define MDNUTRIT1_3
   1 "Offering foods with many different tastes and textures"
   2 "Not forcing child to finish food or bottles, even if not interested or didn't have much"
   3 "Offering a variety of fruits and vegetables"
   4 "Limiting foods and drinks with added sugar (such as candy, cookies, soda, juice)"
   5 "Limiting eating meals in front of tv or other electronic devices"
   6 "None of the above topics"
   8 "Refused"
   9 "Don't know";

 label define MDNUTRIT1_4
   1 "Offering foods with many different tastes and textures"
   2 "Not forcing child to finish food or bottles, even if not interested or didn't have much"
   3 "Offering a variety of fruits and vegetables"
   4 "Limiting foods and drinks with added sugar (such as candy, cookies, soda, juice)"
   5 "Limiting eating meals in front of tv or other electronic devices"
   6 "None of the above topics"
   8 "Refused"
   9 "Don't know";

 label define MDNUTRIT1_5
   1 "Offering foods with many different tastes and textures"
   2 "Not forcing child to finish food or bottles, even if not interested or didn't have much"
   3 "Offering a variety of fruits and vegetables"
   4 "Limiting foods and drinks with added sugar (such as candy, cookies, soda, juice)"
   5 "Limiting eating meals in front of tv or other electronic devices"
   6 "None of the above topics"
   8 "Refused"
   9 "Don't know";

 label define NBRNLV_S
   1 "1 BABY"
   2 "2 BABIES"
   3 "3 BABIES"
   8 "Refused"
   9 "Don't know";

 label define anyusint
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define evuseint
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define stopduse
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define whystopd
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define WHATMETH01
   1 "No method used"
   3 "Birth control pills"
   4 "Condom"
   5 "Partner's vasectomy"
   6 "Female sterilizing operation, such as tubal sterilization and hysterectomy"
   7 "Withdrawal, pulling out"
   8 "Depo-Provera, injectables"
   9 "Hormonal implant (Norplant, Implanon, or Nexplanon)"
  10 "Calendar rhythm, Standard Days, or Cycle Beads method"
  11 "Safe period by temperature or cervical mucus test (Two Day, Billings Ovulation, or Sympto-thermal Method)"
  12 "Diaphragm"
  13 "Female condom, vaginal pouch"
  14 "Foam"
  15 "Jelly or cream"
  16 "Cervical cap"
  17 "Suppository, insert"
  18 "Today sponge"
  19 "iud"
  20 "Emergency contraception"
  21 "Other method -- specify"
  22 "Respondent was sterile"
  23 "Respondent's partner was sterile"
  24 "Lunelle injectable (monthly shot)"
  25 "Contraceptive patch (Ortho-Evra or Xulane)"
  26 "Vaginal contraceptive ring"
  98 "Refused"
  99 "Don't know";

 label define WHATMETH02
   1 "No method used"
   3 "Birth control pills"
   4 "Condom"
   5 "Partner's vasectomy"
   6 "Female sterilizing operation, such as tubal sterilization and hysterectomy"
   7 "Withdrawal, pulling out"
   8 "Depo-Provera, injectables"
   9 "Hormonal implant (Norplant, Implanon, or Nexplanon)"
  10 "Calendar rhythm, Standard Days, or Cycle Beads method"
  11 "Safe period by temperature or cervical mucus test (Two Day, Billings Ovulation, or Sympto-thermal Method)"
  12 "Diaphragm"
  13 "Female condom, vaginal pouch"
  14 "Foam"
  15 "Jelly or cream"
  16 "Cervical cap"
  17 "Suppository, insert"
  18 "Today sponge"
  19 "IUD"
  20 "Emergency contraception"
  21 "Other method -- specify"
  22 "Respondent was sterile"
  23 "Respondent's partner was sterile"
  24 "Lunelle injectable (monthly shot)"
  25 "Contraceptive patch (Ortho-Evra or Xulane)"
  26 "Vaginal contraceptive ring"
  98 "Refused"
  99 "Don't know";

 label define WHATMETH03
   1 "No method used"
   3 "Birth control pills"
   4 "Condom"
   5 "Partner's vasectomy"
   6 "Female sterilizing operation, such as tubal sterilization and hysterectomy"
   7 "Withdrawal, pulling out"
   8 "Depo-Provera, injectables"
   9 "Hormonal implant (Norplant, Implanon, or Nexplanon)"
  10 "Calendar rhythm, Standard Days, or Cycle Beads method"
  11 "Safe period by temperature or cervical mucus test (Two Day, Billings Ovulation, or Sympto-thermal Method)"
  12 "Diaphragm"
  13 "Female condom, vaginal pouch"
  14 "Foam"
  15 "Jelly or cream"
  16 "Cervical cap"
  17 "Suppository, insert"
  18 "Today sponge"
  19 "IUD"
  20 "Emergency contraception"
  21 "Other method -- specify"
  22 "Respondent was sterile"
  23 "Respondent's partner was sterile"
  24 "Lunelle injectable (monthly shot)"
  25 "Contraceptive patch (Ortho-Evra or Xulane)"
  26 "Vaginal contraceptive ring"
  98 "Refused"
  99 "Don't know";

 label define WHATMETH04
   1 "No method used"
   3 "Birth control pills"
   4 "Condom"
   5 "Partner's vasectomy"
   6 "Female sterilizing operation, such as tubal sterilization and hysterectomy"
   7 "Withdrawal, pulling out"
   8 "Depo-Provera, injectables"
   9 "Hormonal implant (Norplant, Implanon, or Nexplanon)"
  10 "Calendar rhythm, Standard Days, or Cycle Beads method"
  11 "Safe period by temperature or cervical mucus test (Two Day, Billings Ovulation, or Sympto-thermal Method)"
  12 "Diaphragm"
  13 "Female condom, vaginal pouch"
  14 "Foam"
  15 "Jelly or cream"
  16 "Cervical cap"
  17 "Suppository, insert"
  18 "Today sponge"
  19 "IUD"
  20 "Emergency contraception"
  21 "Other method -- specify"
  22 "Respondent was sterile"
  23 "Respondent's partner was sterile"
  24 "Lunelle injectable (monthly shot)"
  25 "Contraceptive patch (Ortho-Evra or Xulane)"
  26 "Vaginal contraceptive ring"
  98 "Refused"
  99 "Don't know";

 label define resnouse
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define wantbold
   1 "Yes"
   5 "No"
   6 "Not sure, Don't know"
   8 "Refused"
   9 "Don't know";

 label define probbabe
   1 "Probably yes"
   5 "Probably not"
   6 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define cnfrmno
   1 "Correct"
   2 "Incorrect"
   8 "Refused"
   9 "Don't know";

 label define WANTBLD2
   1 "Yes"
   5 "No"
   6 "Not sure, Don't know"
   7 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define timingok
   1 "Sooner"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define TOOSOON_N
 998 "Refused"
 999 "Don't know";

 label define TOOSOON_P
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define laternum
 998 "Refused"
 999 "Don't know";

 label define latermy
   1 "Months"
   2 "Years"
   8 "Refused"
   9 "Don't know";

 label define WTHPART1
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define WTHPART2
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define feelinpg
   0 "VERY UNHAPPY"
   1 "1"
   2 "2"
   3 "3"
   4 "4"
   5 "5"
   6 "6"
   7 "7"
   8 "8"
   9 "9"
  10 "VERY HAPPY"
  98 "refused"
  99 "DON'T KNOW";

 label define hpwnold
   1 "Yes"
   5 "No"
   6 "Not sure, Don't know"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define timokhp
   1 "Sooner"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   8 "Refused"
   9 "Don't know";

 label define cohpbeg
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define cohpend
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define tellfath
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define whentell
   1 "During the pregnancy"
   2 "After the [pregnancy ended/baby was born]"
   8 "Refused"
   9 "Don't know";

 label define tryscale
   0 "0"
   1 "1"
   2 "2"
   3 "3"
   4 "4"
   5 "5"
   6 "6"
   7 "7"
   8 "8"
   9 "9"
  10 "10"
  98 "Refused"
  99 "Don't know";

 label define wantscal
   0 "0"
   1 "1"
   2 "2"
   3 "3"
   4 "4"
   5 "5"
   6 "6"
   7 "7"
   8 "8"
   9 "9"
  10 "10"
  98 "Refused"
  99 "Don't know";

 label define WHYPRG1
   1 "Your birth control method failed"
   2 "You did not use your birth control method properly"
   3 "Respondent wasn't using a method"
   8 "Refused"
   9 "Don't know";

 label define WHYPRG2
   1 "Your birth control method failed"
   2 "You did not use your birth control method properly"
   3 "Respondent wasn't using a method"
   8 "Refused"
   9 "Don't know";

 label define WHYPRG3
   1 "Your birth control method failed"
   2 "You did not use your birth control method properly"
   3 "Respondent wasn't using a method"
   8 "Refused"
   9 "Don't know";

 label define WHYNOUSE1
   1 "You did not expect to have sex"
   2 "You did not think you could get pregnant"
   3 "You didn't really mind if you got pregnant"
   4 "You were worried about the side effects of birth control"
   5 "Your male partner did not want you to use a birth control method"
   6 "Your male partner himself did not want to use a birth control method"
   7 "(IF VOLUNTEERED:)Respondent was using a method"
   8 "You could not get a method"
   9 "You were not taking, or using, your method consistently"
  98 "Refused"
  99 "Don't know";

 label define WHYNOUSE2
   1 "You did not expect to have sex"
   2 "You did not think you could get pregnant"
   3 "You didn't really mind if you got pregnant"
   4 "You were worried about the side effects of birth control"
   5 "Your male partner did not want you to use a birth control method"
   6 "Your male partner himself did not want to use a birth control method"
   7 "(IF VOLUNTEERED:)Respondent was using a method"
   8 "You could not get a method"
   9 "You were not taking, or using, your method consistently"
  98 "Refused"
  99 "Don't know";

 label define WHYNOUSE3
   1 "You did not expect to have sex"
   2 "You did not think you could get pregnant"
   3 "You didn't really mind if you got pregnant"
   4 "You were worried about the side effects of birth control"
   5 "Your male partner did not want you to use a birth control method"
   6 "Your male partner himself did not want to use a birth control method"
   7 "(IF VOLUNTEERED:)Respondent was using a method"
   8 "You could not get a method"
   9 "You were not taking, or using, your method consistently"
  98 "Refused"
  99 "Don't know";

 label define WHYNOUSE4
   1 "You did not expect to have sex"
   2 "You did not think you could get pregnant"
   3 "You didn't really mind if you got pregnant"
   4 "You were worried about the side effects of birth control"
   5 "Your male partner did not want you to use a birth control method"
   6 "Your male partner himself did not want to use a birth control method"
   7 "(IF VOLUNTEERED:)Respondent was using a method"
   8 "You could not get a method"
   9 "You were not taking, or using, your method consistently"
  98 "Refused"
  99 "Don't know";

 label define WHYNOUSE5
   1 "You did not expect to have sex"
   2 "You did not think you could get pregnant"
   3 "You didn't really mind if you got pregnant"
   4 "You were worried about the side effects of birth control"
   5 "Your male partner did not want you to use a birth control method"
   6 "Your male partner himself did not want to use a birth control method"
   7 "(IF VOLUNTEERED:)Respondent was using a method"
   8 "You could not get a method"
   9 "You were not taking, or using, your method consistently"
  98 "Refused"
  99 "Don't know";

 label define WHYNOUSE6
   1 "You did not expect to have sex"
   2 "You did not think you could get pregnant"
   3 "You didn't really mind if you got pregnant"
   4 "You were worried about the side effects of birth control"
   5 "Your male partner did not want you to use a birth control method"
   6 "Your male partner himself did not want to use a birth control method"
   7 "(IF VOLUNTEERED:)Respondent was using a method"
   8 "You could not get a method"
   9 "You were not taking, or using, your method consistently"
  98 "Refused"
  99 "Don't know";

 label define WHYNOUSE7
   1 "You did not expect to have sex"
   2 "You did not think you could get pregnant"
   3 "You didn't really mind if you got pregnant"
   4 "You were worried about the side effects of birth control"
   5 "Your male partner did not want you to use a birth control method"
   6 "Your male partner himself did not want to use a birth control method"
   7 "(IF VOLUNTEERED:)Respondent was using a method"
   8 "You could not get a method"
   9 "You were not taking, or using, your method consistently"
  98 "Refused"
  99 "Don't know";

 label define WHYNOPG1
   1 "Diagnosis of repro problems/condition"
   2 "Prior preg or attempt: problems with or treatments/ART needed"
   3 "Prior unprotected sex, no preg"
   4 "Just didn't think would get preg/misunderstood risk"
   5 "Just didn't think could get preg"
   6 "Don't know why/didn't think about it/naive/mistake"
   7 "Thought method was still working (still in her system)"
   8 "Prior/recent miscarriage(s) or ectopic pregnancy"
   9 "Menstrual cycle problems/irregularity"
  10 "Had recent birth"
  11 "Perceive infertile or difficult getting preg/carrying to term"
  12 "Lack of education/knowledge"
  13 "Endometriosis"
  14 "Age (too old)"
  15 "Breastfeeding"
  16 "Believed partner subfecund/infertile/sterile"
  17 "Withdrawal failed"
  18 "Thought it was safe period in cycle"
  19 "Method failure (pill, condom, tubal, IUD, Depo-Provera)"
  20 "Other"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define WHYNOPG2
   1 "Diagnosis of repro problems/condition"
   2 "Prior preg or attempt: problems with or treatments/ART needed"
   3 "Prior unprotected sex, no preg"
   4 "Just didn't think would get preg/misunderstood risk"
   5 "Just didn't think could get preg"
   6 "Don't know why/didn't think about it/naive/mistake"
   7 "Thought method was still working (still in her system)"
   8 "Prior/recent miscarriage(s) or ectopic pregnancy"
   9 "Menstrual cycle problems/irregularity"
  10 "Had recent birth"
  11 "Perceive infertile or difficult getting preg/carrying to term"
  12 "Lack of education/knowledge"
  13 "Endometriosis"
  14 "Age (too old)"
  15 "Breastfeeding"
  16 "Believed partner subfecund/infertile/sterile"
  17 "Withdrawal failed"
  18 "Thought it was safe period in cycle"
  19 "Method failure (pill, condom, tubal, IUD, Depo-Provera)"
  20 "Other"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define mainouse
   1 "You did not expect to have sex"
   2 "You did not think you could get pregnant"
   3 "You didn't really mind if you got pregnant"
   4 "You were worried about the side effects of birth control"
   5 "Your male partner did not want you to use a birth control method"
   6 "Your male partner himself did not want to use a birth control method"
   8 "You could not get a method"
   9 "You were not taking, or using, your method consistently"
  98 "Refused"
  99 "Don't know";

 label define GEST_LB
   1 "EARLY PRETERM (< 34 WEEKS)"
   2 "PRETERM (34-36 WEEKS)"
   3 "TERM (37-40 WEEKS)"
   4 "POST-TERM (> 40 WEEKS)";

 label define GEST_OTHR
   1 "1ST TRIMESTER (0-13 WEEKS)"
   2 "2ND TRIMESTER (14-26 WEEKS)"
   3 "3RD TRIMESTER (> 26 WEEKS)";

 label define gestimp
   1 "Yes"
   2 "No";

 label define outcome
   1 "LIVE BIRTH"
   2 "INDUCED ABORTION"
   3 "stillbirth"
   4 "miscarriage"
   5 "ECTOPIC PREGNANCY"
   6 "CURRENT PREGNANCY";

 label define birthord
   1 "1ST BIRTH"
   2 "2ND BIRTH"
   3 "3RD BIRTH"
   4 "4TH BIRTH"
   5 "5TH BIRTH"
   6 "6TH BIRTH"
   7 "7TH BIRTH"
   8 "8TH BIRTH"
   9 "9TH BIRTH"
  10 "10TH BIRTH"
  11 "11TH BIRTH"
  12 "12TH BIRTH"
  13 "13TH BIRTH"
  14 "14TH BIRTH";

 label define datend
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define datecon
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define FMAROUT5
   1 "married"
   2 "divorced"
   3 "widowed"
   4 "separated"
   5 "NEVER MARRIED";

 label define pmarpreg
   1 "yes"
   2 "No";

 label define RMAROUT6
   1 "married"
   2 "divorced"
   3 "widowed"
   4 "separated"
   5 "cohabiting"
   6 "NEVER MARRIED, NOT COHABITING";

 label define FMARCON5
   1 "MARRIED"
   2 "DIVORCED"
   3 "WIDOWED"
   4 "SEPARATED"
   5 "NEVER MARRIED";

 label define RMARCON6
   1 "MARRIED"
   2 "DIVORCED"
   3 "WIDOWED"
   4 "SEPARATED"
   5 "COHABITING"
   6 "NEVER MARRIED, NOT COHABITING";

 label define learnprg
   1 "13 WEEKS OR EARLIER"
   2 "14 WEEKS OR LATER";

 label define pncarewk
   1 "13 WEEKS OR EARLIER"
   2 "14 WEEKS OR LATER"
   3 "NO PRENATAL CARE FOR THIS PREGNANCY";

 label define paydeliv
   1 "OWN INCOME ONLY"
   2 "INSURANCE ONLY"
   3 "OWN INCOME & INSURANCE ONLY"
   4 "MEDICAID/GOVT ASSISTANCE MENTIONED AT ALL"
   5 "ALL OTHER COMBINATIONS OF PAYMENT METHODS";

 label define LBW1
   1 "YES, LOW BIRTH WEIGHT"
   2 "NO, NOT LOW BIRTH WEIGHT";

 label define bfeedwks
   0 "Never breastfed this child"
   1 "Breastfed less than 1 week"
   2 "Breastfed 1-13 weeks (LE 3 mos)"
   3 "Breastfed 14-26 weeks (>3/LE 6 mos)"
   4 "Breastfed 27-52 weeks (>6/LE 12 mos)"
   5 "Breastfed 53-104 weeks (>1/LE 2 yrs)"
   6 "Breastfed 105+ weeks (>2 yrs)"
   7 "Still breastfeeding this child";

 label define oldwantr
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "unwanted"
   6 "DON'T KNOW, NOT SURE";

 label define oldwantp
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "UNWANTED"
   6 "DON'T KNOW, NOT SURE";

 label define wantresp
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "UNWANTED"
   6 "DON'T KNOW, NOT SURE";

 label define wantpart
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "UNWANTED"
   6 "DON'T KNOW, NOT SURE";

 label define toosoon
 998 "Refused"
 999 "Don't know";

 label define newwantr
   1 "Later, overdue"
   2 "Right time"
   3 "Too soon: by less than 2 years"
   4 "Too soon: by 2 years or more"
   5 "Didn't care, indifferent"
   6 "Unwanted"
   7 "Don't know, not sure";

 label define ager
  15 "15 YEARS"
  16 "16 YEARS"
  17 "17 YEARS"
  18 "18 YEARS"
  19 "19 YEARS"
  20 "20 YEARS"
  21 "21 YEARS"
  22 "22 YEARS"
  23 "23 YEARS"
  24 "24 YEARS"
  25 "25 YEARS"
  26 "26 YEARS"
  27 "27 YEARS"
  28 "28 YEARS"
  29 "29 YEARS"
  30 "30 YEARS"
  31 "31 YEARS"
  32 "32 YEARS"
  33 "33 YEARS"
  34 "34 YEARS"
  35 "35 YEARS"
  36 "36 YEARS"
  37 "37 YEARS"
  38 "38 YEARS"
  39 "39 YEARS"
  40 "40 YEARS"
  41 "41 YEARS"
  42 "42 YEARS"
  43 "43 YEARS"
  44 "44 YEARS"
  45 "45 YEARS"
  46 "46 YEARS"
  47 "47 YEARS"
  48 "48 YEARS";

 label define agescrn
  15 "15 years"
  16 "16 years"
  17 "17 years"
  18 "18 years"
  19 "19 years"
  20 "20 years"
  21 "21 years"
  22 "22 years"
  23 "23 years"
  24 "24 years"
  25 "25 years"
  26 "26 years"
  27 "27 years"
  28 "28 years"
  29 "29 years"
  30 "30 years"
  31 "31 years"
  32 "32 years"
  33 "33 years"
  34 "34 years"
  35 "35 years"
  36 "36 years"
  37 "37 years"
  38 "38 years"
  39 "39 years"
  40 "40 years"
  41 "41 years"
  42 "42 years"
  43 "43 years"
  44 "44 years"
  45 "45 years"
  46 "46 years"
  47 "47 years"
  48 "48 years"
  49 "49 years"
  97 "Not ascertained";

 label define fmarital
   1 "MARRIED TO A PERSON OF THE OPPOSITE SEX"
   2 "widowed"
   3 "DIVORCED OR ANNULLED"
   4 "separated"
   5 "NEVER MARRIED";

 label define rmarital
   1 "CURRENTLY MARRIED"
   2 "NOT MARRIED BUT LIVING WITH OPP SEX PARTNER"
   3 "widowed"
   4 "divorced"
   5 "SEPARATED FOR REASONS OF MARITAL DISCORD"
   6 "NEVER BEEN MARRIED";

 label define educat
   9 "9TH GRADE OR LESS"
  10 "10TH GRADE"
  11 "11TH GRADE"
  12 "12TH GRADE"
  13 "1 YEAR OF COLLEGE/GRAD SCHOOL"
  14 "2 YEARS OF COLLEGE/GRAD SCHOOL"
  15 "3 YEARS OF COLLEGE/GRAD SCHOOL"
  16 "4 YEARS OF COLLEGE/GRAD SCHOOL"
  17 "5 YEARS OF COLLEGE/GRAD SCHOOL"
  18 "6 YEARS OF COLLEGE/GRAD SCHOOL"
  19 "7+ YEARS OF COLLEGE/GRAD SCHOOL";

 label define hieduc
   5 "9TH GRADE OR LESS"
   6 "10TH GRADE"
   7 "11TH GRADE"
   8 "12TH GRADE, NO DIPLOMA (NOR GED)"
   9 "HIGH SCHOOL GRADUATE (DIPLOMA OR GED)"
  10 "SOME COLLEGE BUT NO DEGREE"
  11 "ASSOCIATE DEGREE IN COLLEGE/UNIVERSITY"
  12 "BACHELOR'S DEGREE"
  13 "MASTER'S DEGREE"
  14 "DOCTORATE DEGREE"
  15 "PROFESSIONAL DEGREE";

 label define race
   1 "black"
   2 "white"
   3 "other";

 label define hispanic
   1 "hispanic"
   2 "NON-HISPANIC";

 label define HISPRACE2
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race";

 label define rcurpreg
   1 "YES (CURRENTLY PREGNANT)"
   2 "NO (NOT CURRENTLY PREGNANT)";

 label define pregnum
   0 "none"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 PREGNANCIES"
   5 "5 PREGNANCIES"
   6 "6 PREGNANCIES";

 label define parity
   0 "0 BABIES"
   1 "1 BABY"
   2 "2 BABIES"
   3 "3 BABIES"
   4 "4 BABIES";

 label define CURR_INS
   1 "Currently covered by private health insurance or Medi-Gap"
   2 "Currently covered by Medicaid, CHIP, or a state-sponsored health plan"
   3 "Currently covered by Medicare, military health care, or other government health care"
   4 "Currently covered only by a single-service plan, only by the Indian Health Service, or currently not covered by health insurance";

 label define pubassis
   1 "YES (RECEIVED PUBLIC ASSISTANCE IN [INTERVIEW YEAR -1])"
   2 "NO (DID NOT RECEIVE PUBLIC ASSISTANCE IN [INTERVIEW YEAR -1])";

 label define poverty
  50 "50 PERCENT OF POVERTY LEVEL"
 700 "700 PERCENT OF POVERTY LEVEL OR GREATER";

 label define laborfor
   1 "WORKING FULL-TIME"
   2 "WORKING PART-TIME"
   3 "WORKING-TEMP ILL/ETC"
   4 "WORKING-MATERNITY OR FAMILY LEAVE"
   5 "NOT WORKING BUT LOOKING FOR WORK"
   6 "school"
   7 "KEEPING HOUSE"
   8 "CARING FOR FAMILY"
   9 "other";

 label define religion
   1 "NO RELIGION"
   2 "catholic"
   3 "protestant"
   4 "OTHER RELIGIONS";

 label define metro
   1 "PRINCIPAL CITY OF MSA"
   2 "OTHER MSA"
   3 "NOT MSA";

 label define brnout
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define yrstrus
   1 "1968-1989"
   2 "1990-1999"
   3 "2000-2009"
   4 "2010-2019"
  98 "Refused"
  99 "Don't know";

 label define OUTCOME_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define BIRTHORD_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define DATEND_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define AGEPREG_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define DATECON_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define AGECON_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define FMAROUT5_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PMARPREG_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define RMAROUT6_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define FMARCON5_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define RMARCON6_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LEARNPRG_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PNCAREWK_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PAYDELIV_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LBW1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define BFEEDWKS_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define OLDWANTR_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define OLDWANTP_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define WANTRESP_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define WANTPART_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define TOOSOON_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define NEWWANTR_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define AGER_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define FMARITAL_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define RMARITAL_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define EDUCAT_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define HIEDUC_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define RACE_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define HISPANIC_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define HISPRACE2_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define RCURPREG_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PREGNUM_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PARITY_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define CURR_INS_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PUBASSIS_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define POVERTY_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LABORFOR_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define RELIGION_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define secu
   1 "1"
   2 "2"
   3 "3"
   4 "4";

 label define cmintvw
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define cmlstyr
9997 "Not ascertained"
9998 "Refused"
9999 "Don't know";

 label define CMJAN3YR
1345 "January 2012"
1357 "January 2013"
1369 "January 2014"
1381 "January 2015"
1393 "January 2016";

 label define CMJAN4YR
1333 "January 2011"
1345 "January 2012"
1357 "January 2013"
1369 "January 2014"
1381 "January 2015";

 label define CMJAN5YR
1321 "January 2010"
1333 "January 2011"
1345 "January 2012"
1357 "January 2013"
1369 "January 2014";

 label define phase
   1 "First 10 weeks of quarter"
   2 "Last 2 weeks of quarter (double sample)";

 label values pregordr pregordr ;
 label values moscurrp moscurrp ;
 label values PREGEND1 PREGEND1 ;
 label values PREGEND2 PREGEND2 ;
 label values hpageend hpageend ;
 label values kidage kidage ;
 label values hpagelb hpagelb ;
 label values PAYBIRTH1 PAYBIRTH1 ;
 label values PAYBIRTH2 PAYBIRTH2 ;
 label values PAYBIRTH3 PAYBIRTH3 ;
 label values csecprim csecprim ;
 label values CSECMED1 CSECMED1 ;
 label values CSECMED2 CSECMED2 ;
 label values CSECMED3 CSECMED3 ;
 label values CSECMED4 CSECMED4 ;
 label values CSECMED5 CSECMED5 ;
 label values csecplan csecplan ;
 label values priorsmk priorsmk ;
 label values postsmks postsmks ;
 label values npostsmk npostsmk ;
 label values ANYNURSE1 ANYNURSE1 ;
 label values FEDSOLID1 FEDSOLID1 ;
 label values FRSTEATD_N1 FRSTEATD_N1 ;
 label values FRSTEATD_P1 FRSTEATD_P1 ;
 label values FRSTEATD1 FRSTEATD1 ;
 label values QUITNURS1 QUITNURS1 ;
 label values MDSOLID1 MDSOLID1 ;
 label values WHNSOLID1 WHNSOLID1 ;
 label values MDNUTRIT1_1 MDNUTRIT1_1 ;
 label values MDNUTRIT1_2 MDNUTRIT1_2 ;
 label values MDNUTRIT1_3 MDNUTRIT1_3 ;
 label values MDNUTRIT1_4 MDNUTRIT1_4 ;
 label values MDNUTRIT1_5 MDNUTRIT1_5 ;
 label values NBRNLV_S NBRNLV_S ;
 label values anyusint anyusint ;
 label values evuseint evuseint ;
 label values stopduse stopduse ;
 label values whystopd whystopd ;
 label values WHATMETH01 WHATMETH01 ;
 label values WHATMETH02 WHATMETH02 ;
 label values WHATMETH03 WHATMETH03 ;
 label values WHATMETH04 WHATMETH04 ;
 label values resnouse resnouse ;
 label values wantbold wantbold ;
 label values probbabe probbabe ;
 label values cnfrmno cnfrmno ;
 label values WANTBLD2 WANTBLD2 ;
 label values timingok timingok ;
 label values TOOSOON_N TOOSOON_N ;
 label values TOOSOON_P TOOSOON_P ;
 label values laternum laternum ;
 label values latermy latermy ;
 label values WTHPART1 WTHPART1 ;
 label values WTHPART2 WTHPART2 ;
 label values feelinpg feelinpg ;
 label values hpwnold hpwnold ;
 label values timokhp timokhp ;
 label values cohpbeg cohpbeg ;
 label values cohpend cohpend ;
 label values tellfath tellfath ;
 label values whentell whentell ;
 label values tryscale tryscale ;
 label values wantscal wantscal ;
 label values WHYPRG1 WHYPRG1 ;
 label values WHYPRG2 WHYPRG2 ;
 label values WHYPRG3 WHYPRG3 ;
 label values WHYNOUSE1 WHYNOUSE1 ;
 label values WHYNOUSE2 WHYNOUSE2 ;
 label values WHYNOUSE3 WHYNOUSE3 ;
 label values WHYNOUSE4 WHYNOUSE4 ;
 label values WHYNOUSE5 WHYNOUSE5 ;
 label values WHYNOUSE6 WHYNOUSE6 ;
 label values WHYNOUSE7 WHYNOUSE7 ;
 label values WHYNOPG1 WHYNOPG1 ;
 label values WHYNOPG2 WHYNOPG2 ;
 label values mainouse mainouse ;
 label values GEST_LB GEST_LB ;
 label values GEST_OTHR GEST_OTHR ;
 label values gestimp gestimp ;
 label values outcome outcome ;
 label values birthord birthord ;
 label values datend datend ;
 label values datecon datecon ;
 label values FMAROUT5 FMAROUT5 ;
 label values pmarpreg pmarpreg ;
 label values RMAROUT6 RMAROUT6 ;
 label values FMARCON5 FMARCON5 ;
 label values RMARCON6 RMARCON6 ;
 label values learnprg learnprg ;
 label values pncarewk pncarewk ;
 label values paydeliv paydeliv ;
 label values LBW1 LBW1 ;
 label values bfeedwks bfeedwks ;
 label values oldwantr oldwantr ;
 label values oldwantp oldwantp ;
 label values wantresp wantresp ;
 label values wantpart wantpart ;
 label values toosoon toosoon ;
 label values newwantr newwantr ;
 label values ager ager ;
 label values agescrn agescrn ;
 label values fmarital fmarital ;
 label values rmarital rmarital ;
 label values educat educat ;
 label values hieduc hieduc ;
 label values race race ;
 label values hispanic hispanic ;
 label values HISPRACE2 HISPRACE2 ;
 label values rcurpreg rcurpreg ;
 label values pregnum pregnum ;
 label values parity parity ;
 label values CURR_INS CURR_INS ;
 label values pubassis pubassis ;
 label values poverty poverty ;
 label values laborfor laborfor ;
 label values religion religion ;
 label values metro metro ;
 label values brnout brnout ;
 label values yrstrus yrstrus ;
 label values OUTCOME_I OUTCOME_I ;
 label values BIRTHORD_I BIRTHORD_I ;
 label values DATEND_I DATEND_I ;
 label values AGEPREG_I AGEPREG_I ;
 label values DATECON_I DATECON_I ;
 label values AGECON_I AGECON_I ;
 label values FMAROUT5_I FMAROUT5_I ;
 label values PMARPREG_I PMARPREG_I ;
 label values RMAROUT6_I RMAROUT6_I ;
 label values FMARCON5_I FMARCON5_I ;
 label values RMARCON6_I RMARCON6_I ;
 label values LEARNPRG_I LEARNPRG_I ;
 label values PNCAREWK_I PNCAREWK_I ;
 label values PAYDELIV_I PAYDELIV_I ;
 label values LBW1_I LBW1_I ;
 label values BFEEDWKS_I BFEEDWKS_I ;
 label values OLDWANTR_I OLDWANTR_I ;
 label values OLDWANTP_I OLDWANTP_I ;
 label values WANTRESP_I WANTRESP_I ;
 label values WANTPART_I WANTPART_I ;
 label values TOOSOON_I TOOSOON_I ;
 label values NEWWANTR_I NEWWANTR_I ;
 label values AGER_I AGER_I ;
 label values FMARITAL_I FMARITAL_I ;
 label values RMARITAL_I RMARITAL_I ;
 label values EDUCAT_I EDUCAT_I ;
 label values HIEDUC_I HIEDUC_I ;
 label values RACE_I RACE_I ;
 label values HISPANIC_I HISPANIC_I ;
 label values HISPRACE2_I HISPRACE2_I ;
 label values RCURPREG_I RCURPREG_I ;
 label values PREGNUM_I PREGNUM_I ;
 label values PARITY_I PARITY_I ;
 label values CURR_INS_I CURR_INS_I ;
 label values PUBASSIS_I PUBASSIS_I ;
 label values POVERTY_I POVERTY_I ;
 label values LABORFOR_I LABORFOR_I ;
 label values RELIGION_I RELIGION_I ;
 label values secu secu ;
 label values cmintvw cmintvw ;
 label values cmlstyr cmlstyr ;
 label values CMJAN3YR CMJAN3YR ;
 label values CMJAN4YR CMJAN4YR ;
 label values CMJAN5YR CMJAN5YR ;
 label values quarter quarter ;
 label values phase phase ;
 label values intvwyear intvwyear ;

#delimit cr

/********************************************************************

 Section 4: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace
