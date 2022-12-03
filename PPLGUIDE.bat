@ECHO OFF
C:
CD\
CLS

:MAIN 
CLS
color 0F
ECHO ============= Private Pilot Resource Guide =============
ECHO                          __!__
ECHO                      _____(_)_____
ECHO                         !  !  !
ECHO -----------------------------------------------------------

ECHO 1. Resources

ECHO 2. Miles to Nautical Miles Conversion 

Echo 3. Instrument Panel guide 

Echo 4. Speed Conversion

Echo 5. Airports in TN

Echo 6. Manufacturers and models

Echo 7. Pop Quiz

ECHO 8. Timekeeping tool (file config)

ECHO 9. Why should I fly? (exits menu when complete)


ECHO ------------------------------------------------------------
ECHO ==========PRESS 'Q' TO QUIT==========
ECHO.

set /p INPUT="INPUT:" 
IF /I '%INPUT%'=='1' GOTO Selection1
IF /I '%INPUT%'=='2' GOTO Selection2
IF /I '%INPUT%'=='3' GOTO Selection3
IF /I '%INPUT%'=='4' GOTO Selection4
IF /I '%INPUT%'=='5' GOTO Selection5
IF /I '%INPUT%'=='6' GOTO Selection6
IF /I '%INPUT%'=='7' GOTO Selection7
IF /I '%INPUT%'=='8' GOTO Selection8
IF /I '%INPUT%'=='9' GOTO Selection9

IF /I '%INPUT%'=='Q' GOTO Quit

CLS
ECHO %INPUT%
ECHO ============INVALID INPUT============
ECHO -------------------------------------
ECHO Please select a number from the Main Menu
echo Menu [1-9] or select 'Q' to quit.
ECHO -------------------------------------
ECHO ======PRESS ANY KEY TO CONTINUE======

PAUSE > NUL
GOTO MAIN

:Selection1

:Resource 
CLS
color 2F
ECHO ---------------------------------------------------
ECHO Please select a Letter from the Resources Menu
echo Menu [A-L] or select 'R' to return to the Main Menu.
ECHO ----------------------------------------------------

ECHO A. (Recommended) take an Introductory Flight

ECHO B. Make Contact (we will reach you)

ECHO C. Register in FlightSchedulePro system to book time

ECHO D. Obtain your 3rd Class Medical Certificate

ECHO E. ATC

ECHO F. AOPA

ECHO G. GROUND SCHOOL (Sporty's)

ECHO H. ASA 

ECHO I. Knowledge Exam

ECHO J. CHECKRIDE 

ECHO K. Trade-A-Plane

ECHO L. Scholarships

SET INPUT=
SET /P INPUT=Please select a letter:

IF /I '%INPUT%'=='A' GOTO SelectionA
IF /I '%INPUT%'=='B' GOTO SelectionB
IF /I '%INPUT%'=='C' GOTO SelectionC
IF /I '%INPUT%'=='D' GOTO SelectionD
IF /I '%INPUT%'=='E' GOTO SelectionE
IF /I '%INPUT%'=='F' GOTO SelectionF
IF /I '%INPUT%'=='G' GOTO SelectionG
IF /I '%INPUT%'=='H' GOTO SelectionH
IF /I '%INPUT%'=='I' GOTO SelectionI
IF /I '%INPUT%'=='J' GOTO SelectionJ
IF /I '%INPUT%'=='K' GOTO SelectionK
IF /I '%INPUT%'=='L' GOTO SelectionL
IF /I '%INPUT%'=='R' GOTO MAIN 

:SelectionA

Start "" https://store.nashvilleflighttraining.com/

goto Resource 

:SelectionB

Start "" https://www.tnflighttraining.com/contact/

goto Resource 


:SelectionC

Start "" http://app.flightschedulepro.com/Account/Signup/121617

goto Resource 

:SelectionD

Start "" https://www.faa.gov/pilots/amelocator/

goto Resource 

:SelectionE

Start "" https://www.liveatc.net/search/?icao=bna

goto Resource 


:SelectionF

Start "" https://flighttraining.aopa.org/apps/student/studentregister1.cfm?offercode=S1604WZFSN

GOTO Resource 

:SelectionG

Start "" https://www.sportys.com/learn-to-fly-course-private-pilot-test-prep-online-app-and-tv.html
GOTO Resource 

:SelectionH

Start "" https://www.asa2fly.com/?gclid=CjwKCAjwrfCRBhAXEiwAnkmKmXf_Ixni31JI8EJFrwDvkzAJH4DYUmwb_gJ4reKl-WgcsEIUIZHS6hoC18oQAvD_BwE

GOTO Resource 

:SelectionI

Start "" https://www.faa.gov/training_testing/testing/

GOTO Resource 

:SelectionJ

Start "" https://www.pilotcheckride.com/

GOTO Resource 

:SelectionK

Start "" https://www.trade-a-plane.com/

GOTO Resource 

:SelectionL

START "" https://www.faa.gov/education/grants_and_scholarships

GOTO Resource 




GOTO MAIN 


:Selection2 
CLS
color 0A
 ECHO Press 1 to convert Nautical miles
 ECHO Press 2 to convert Miles
 ECHO Press R to return to the Main Menu

set /p selection2input="Enter your selection: "
ECHO %selection2input%

 IF /I '%selection2input%' == '1'  goto answer1

IF /I '%selection2input%' == '2' goto answer2
 
IF /I '%selection2input%'=='R' GOTO MAIN 

PAUSE > NUL
GOTO Selection2

:answer1
set /p NM="Enter Distance in Nautical Miles: "
rem  the original number was 1.15 below, but I can't find support for floating values
set /A result = %NM% * 115
Echo %NM% Nautical miles =  %result% / 100 Miles.
rem the /100 was an attempt to return a decimal answer.

PAUSE > NUL
GOTO Selection2

:answer2
set /p M="Enter distance in Miles: "
rem the original number was .87 below
set /A result = %M% * 87
ECHO %M% Miles = %result% / 100 Nautical miles.
rem Professor, batch does not support floating point values

PAUSE > NUL
GOTO Selection2

:Selection3 

ECHO INSTRUMENT PANEL GUIDE
Start "" https://guides.gamepressure.com/microsoft-flight-simulator/gfx/word/50221562.jpg
Goto guide
:guide 
CLS
color 1F 
ECHO ------Refer to the image when looking at the labels below------------------
ECHO ------------Select labels for more information-----------------------------
ECHO ------------------Or Press R to Return-------------------------------------

ECHO 1. Airspeed Indicator (in knots)
ECHO 2. Altitude Indicator
ECHO 3. Altimeter
ECHO 4. Throttle RPM
ECHO 5. Flaps
ECHO 6. Mixture
ECHO 7. Throttle 
ECHO 8. Pitch Trim - Nose Up, Nose Down
ECHO 9. Vertical Speed Indicator
ECHO 10. Heading Indicator
ECHO 11. Parking Brake

set /p INPUT="INPUT: "
IF /I '%INPUT%'=='1' GOTO SelectionAirspeed
IF /I '%INPUT%'=='2' GOTO SelectionAltitude
IF /I '%INPUT%'=='3' GOTO SelectionAltimeter
IF /I '%INPUT%'=='4' GOTO SelectionRPM
IF /I '%INPUT%'=='5' GOTO SelectionFlaps
IF /I '%INPUT%'=='6' GOTO SelectionMix
IF /I '%INPUT%'=='7' GOTO SelectionThrottle
IF /I '%INPUT%'=='8' GOTO SelectionPitch
IF /I '%INPUT%'=='9' GOTO SelectionVspeed
IF /I '%INPUT%'=='10' GOTO SelectionHeading
IF /I '%INPUT%'=='11' GOTO SelectionPark
IF /I '%INPUT%'=='R' GOTO MAIN 

:SelectionAirspeed
Start "" https://skybrary.aero/articles/air-speed-indicator

goto guide

:SelectionAltitude
Start "" https://en.wikipedia.org/wiki/Attitude_indicator

goto guide

:SelectionAltimeter
Start "" https://en.wikipedia.org/wiki/Altimeter

goto guide

:SelectionRPM
Start "" https://kus-usa.com/resources/how-does-a-tachometer-work/

goto guide

:SelectionFlaps
Start "" https://en.wikipedia.org/wiki/Flap_(aeronautics)

goto guide

:SelectionMix
Start "" https://en.wikipedia.org/wiki/Aircraft_engine_controls#:~:text=Mixture%20control%20%2D%20Sets%20the%20amount,is%20known%20as%20%22leaning%22.

goto guide

:SelectionThrottle
Start "" https://en.wikipedia.org/wiki/Aircraft_engine_controls

goto guide

:SelectionPitch
Start "" https://youtu.be/XZAKITB68nY

goto guide

:SelectionVspeed
Start "" https://skybrary.aero/articles/vertical-speed-indicator

goto guide

:SelectionHeading
Start "" https://en.wikipedia.org/wiki/Heading_indicator

goto guide

:SelectionPark
Start "" https://skybrary.aero/articles/brakes

goto guide




:Selection4 
CLS
color 0A 
ECHO -----------------------------------------
ECHO -----Please Select a Metric-----
ECHO ----------------------------------------

ECHO Press 1 to translate MPH
ECHO Press 2 to translate Knots
ECHO Press 3 to translate KPH
ECHO Press R to return to Main menu

set /p INPUT="INPUT: "
IF /I '%INPUT%'=='1' GOTO SelectionMiles
IF /I '%INPUT%'=='2' GOTO SelectionKnots
IF /I '%INPUT%'=='3' GOTO SelectionKilometers
IF /I '%INPUT%'=='R' GOTO MAIN


PAUSE > NUL
goto MAIN

:SelectionMiles
rem I was going to request and convert input here similar to selection2, but batch does not appear to support decimals
ECHO 1 MPH = 1.6 KPH , .87 Knots
PAUSE > NUL
goto MAIN

:SelectionKnots
rem I was going to request and convert input here similar to selection2, but batch does not appear to support decimals
ECHO 1 Knot = 1.15 MPH, 1.85 KPH
PAUSE > NUL
goto MAIN

:SelectionKilometers
rem I was going to request and convert input here similar to selection2, but batch does not appear to support decimals
ECHO 1 KPH = .53 Knots , .62 MPH
PAUSE > NUL
goto MAIN

:Selection5 
CLS
color 0B
ECHO --------------------------------------------------------------------------------------------
ECHO City served	                   	Airport name	                                                               	              
ECHO ---------------------------------------------------------------------------------------------
ECHO Chattanooga                    Chattanooga Metropolitan Airport (Lovell Field)	      
ECHO Knoxvil                        McGhee Tyson Airport	                                              
ECHO Memphis                        Memphis International Airport	                                            
ECHO Nashville                      Nashville International Airport (Berry Field)	      
ECHO Tri-Cities                     Tri-Cities Regional Airport (Tri-Cities Regional TN/VA)   
ECHO ----------Commercial service---------------------------------------------------------------		
ECHO Jackson                        McKellar–Sipes Regional Airport	                          
ECHO -----------Reliever airports---------------------------------------------------------------	
ECHO Knoxville                      Knoxville Downtown Island Airport	                       
ECHO Memphis                        General DeWitt Spain Airport	                                               
ECHO Millington                     Charles W. Baker Airport	                                                
ECHO Nashville                      John C. Tune Airport                                                                   
ECHO Smyrna                         Smyrna Airport	                                                               
ECHO -------General aviation airports--------------------------------------------------------		
ECHO Athens                         McMinn County Airport	                                             
ECHO Bolivar                        William L. Whitehurst Field	                                             
ECHO Camden                         Benton County Airport	                                          
ECHO Centerville                    Centerville Municipal Airport	                                              
ECHO Clarksville                    Clarksville-Montgomery County Regional Airport             
ECHO Cleveland                      Cleveland Regional Jetport	                                               
ECHO Clifton                        Hassel Field	                                                                 
ECHO Columbia / Mt. Pleasant        Maury County Airport	                                            
ECHO Copperhill / Ducktown          Martin Campbell Field	                                              
ECHO Covington                      Covington Municipal Airport	                                               
ECHO Crossville                     Crossville Memorial Airport (Whitson Field)	        
ECHO Dayton                         Mark Anton Airport	                                                                 
ECHO Dickson                        Dickson Municipal Airport	                                              
ECHO Dyersburg                      Dyersburg Regional Airport	                                               
ECHO Elizabethton                   Elizabethton Municipal Airport	                                               
ECHO Fayetteville                   Fayetteville Municipal Airport	                                              
ECHO Gainesboro                     Jackson County Airport	                                               
ECHO Gallatin                       Sumner County Regional Airport	                            
ECHO Greeneville                    Greeneville-Greene County Municipal Airport	         
ECHO Humboldt                       Humboldt Municipal Airport	                                              
ECHO Huntingdon                     McKenzie Carroll County Airport	                                                
ECHO Jacksboro                      Campbell County Airport	                                              
ECHO Jamestown                      Jamestown Municipal Airport	                                                
ECHO Jasper                         Marion County Airport (Brown Field)	                            
ECHO Lafayette                      Lafayette Municipal Airport	                                                
ECHO Lawrenceburg                   Lawrenceburg-Lawrence County Airport	                          
ECHO Lebanon                        Lebanon Municipal Airport	                                              
ECHO Lewisburg                      Ellington Airport	                                                                  
ECHO Lexington / Parsons            Beech River Regional Airport	                                             
ECHO Linden                         Perry County Airport	                                                                
ECHO Livingston                     Livingston Municipal Airport	                                                
ECHO Madisonville                   Monroe County Airport	                                                
ECHO McMinnville                    Warren County Memorial Airport	                            
ECHO Millington                     Millington Regional Jetport	                                                
ECHO Morristown                     Morristown Regional Airport	                                               
ECHO Mountain City                  Johnson County Airport	                                                
ECHO Murfreesboro                   Murfreesboro Municipal Airport	                            
ECHO Oneida                         Scott Municipal Airport	                                                
ECHO Paris                          Henry County Airport	                                               
ECHO Portland                       Portland Municipal Airport	                                                
ECHO Pulaski                        Abernathy Field	                                                                   
ECHO Rockwood                       Rockwood Municipal Airport	                                                
ECHO Rogersville                    Hawkins County Airport	                                            
ECHO Savannah                       Savannah-Hardin County Airport	                         
ECHO Selmer                         Robert Sibley Airport	                                               
ECHO Sevierville                    Gatlinburg-Pigeon Forge Airport	                            
ECHO Sewanee                        Franklin County Airport	                                              
ECHO Shelbyville                    Shelbyville Municipal Airport (Bomar Field)	         
ECHO Smithville                     Smithville Municipal Airport	                                               
ECHO Somerville                     Fayette County Airport	                                               
ECHO Sparta                         Upper Cumberland Regional Airport	                            
ECHO Springfield                    Springfield-Robertson County Airport	                             
ECHO Tazewell                       New Tazewell Municipal Airport	                          
ECHO Trenton                        Gibson County Airport	                                                
ECHO Tullahoma                      Tullahoma Regional Airport (William Northern Field)         
ECHO Union City                     Everett-Stewart Regional Airport	                            
ECHO Waverly                        Humphreys County Airport	                                              
ECHO Winchester                     Winchester Municipal Airport	                                               





PAUSE > NUL
Goto MAIN

:Selection6 

:MAKE
CLS
color 0A
ECHO -------------------------------------MAKES and Models-------------------------------------------
ECHO Please select a Number from the list of manufacturers for a short list of models.
echo Select [1-6] or select 'R' to return to the Main menu.
ECHO --------------------------------------------------------------------------------------------

ECHO 1. American Champion
ECHO 2. Beechcraft
ECHO 3. Cessna
ECHO 4. Diamond
ECHO 5. Aviat
ECHO 6. Piper



set /p INPUT="INPUT: "
IF /I '%INPUT%'=='1' GOTO SelectionAmericanChampion
IF /I '%INPUT%'=='2' GOTO SelectionBeechcraft
IF /I '%INPUT%'=='3' GOTO SelectionCessna
IF /I '%INPUT%'=='4' GOTO SelectionDiamond
IF /I '%INPUT%'=='5' GOTO SelectionAviat
IF /I '%INPUT%'=='6' GOTO SelectionPiper
IF /I '%INPUT%'=='M' GOTO MAKE
IF /I '%INPUT%'=='R' GOTO MAIN

PAUSE > NUL
goto MAIN

:SelectionAmericanChampion
CLS
color 0A
ECHO American Champion
ECHO -----------------------------------------
ECHO -----Please Select a model-----
ECHO ----------------------------------------
ECHO 1. Champ (Airknocker)
ECHO 2. Citabria
ECHO 3. Scout
ECHO 4. Decathlon

ECHO Press 'M' to return to manufacturer menu.
set /p INPUT="INPUT: "
IF /I '%INPUT%'=='1' GOTO SelectionChamp
IF /I '%INPUT%'=='2' GOTO SelectionCitabria
IF /I '%INPUT%'=='3' GOTO SelectionScout
IF /I '%INPUT%'=='4' GOTO SelectionDecathlon
IF /I '%INPUT%'=='M' GOTO MAKE
PAUSE > NUL
Goto MAIN

:SelectionChamp
Start "" https://en.wikipedia.org/wiki/Aeronca_Champion
GOTO SelectionAmericanChampion

:SelectionCitabria
Start "" https://en.wikipedia.org/wiki/American_Champion_Citabria
GOTO SelectionAmericanChampion

:SelectionScout
Start "" https://en.wikipedia.org/wiki/American_Champion_Scout
GOTO SelectionAmericanChampion

:SelectionDecathlon
Start "" https://en.wikipedia.org/wiki/American_Champion_Decathlon
GOTO SelectionAmericanChampion


:SelectionBeechcraft
CLS
color 0A
ECHO Beechcraft
ECHO -----------------------------------------
ECHO -----Please Select a model-----
ECHO ----------------------------------------
ECHO 1. Bonanza
ECHO 2. Baron
ECHO 3. Denali
ECHO 4. T-6 Texan II

ECHO Press 'M' to return to manufacturer menu.
set /p INPUT="INPUT: "
IF /I '%INPUT%'=='1' GOTO SelectionBonanza
IF /I '%INPUT%'=='2' GOTO SelectionBaron
IF /I '%INPUT%'=='3' GOTO SelectionDenali
IF /I '%INPUT%'=='4' GOTO SelectionTexan
IF /I '%INPUT%'=='M' GOTO MAKE
PAUSE > NUL
Goto MAIN

:SelectionBonanza
Start "" https://en.wikipedia.org/wiki/Beechcraft_Bonanza
GOTO SelectionBeechcraft

:SelectionBaron
Start "" https://en.wikipedia.org/wiki/Beechcraft_Baron
GOTO SelectionBeechcraft

:SelectionDenali
Start "" https://en.wikipedia.org/wiki/Beechcraft_Denali
GOTO SelectionBeechcraft

:SelectionTexan
Start "" https://en.wikipedia.org/wiki/Beechcraft_T-6_Texan_II
GOTO SelectionBeechcraft


:SelectionCessna
CLS
color 0A
ECHO Cessna
ECHO -----------------------------------------
ECHO -----Please Select a model-----
ECHO ----------------------------------------
ECHO 1. Skyhawk
ECHO 2. Skylane
ECHO 3. Stationair
ECHO 4. Caravan

ECHO Press 'M' to return to manufacturer menu.
set /p INPUT="INPUT: "
IF /I '%INPUT%'=='1' GOTO SelectionSkyhawk
IF /I '%INPUT%'=='2' GOTO SelectionSkylane
IF /I '%INPUT%'=='3' GOTO SelectionStationair
IF /I '%INPUT%'=='4' GOTO SelectionCaravan
IF /I '%INPUT%'=='M' GOTO MAKE
PAUSE > NUL
Goto MAIN

:SelectionSkhawk
Start "" https://en.wikipedia.org/wiki/Cessna_172
GOTO SelectionCessna

:SelectionSkylane
Start "" https://en.wikipedia.org/wiki/Cessna_182_Skylane
GOTO SelectionCessna

:SelectionStationair
Start "" https://en.wikipedia.org/wiki/Cessna_206
GOTO SelectionCessna

:SelectionCaravan
Start "" https://en.wikipedia.org/wiki/Cessna_208_Caravan
GOTO SelectionCessna


:SelectionDiamond
CLS
color 0A
ECHO Diamond Aircraft
ECHO -----------------------------------------
ECHO -----Please Select a model-----
ECHO ----------------------------------------
ECHO 1. DA20
ECHO 2. HK36 Super Dimona
ECHO 3. DA40 Star
ECHO 4. DA42 TwinStar

ECHO Press 'M' to return to manufacturer menu.
set /p INPUT="INPUT: "
IF /I '%INPUT%'=='1' GOTO SelectionDA20
IF /I '%INPUT%'=='2' GOTO SelectionDimona
IF /I '%INPUT%'=='3' GOTO SelectionDA40
IF /I '%INPUT%'=='4' GOTO SelectionDA42
IF /I '%INPUT%'=='M' GOTO MAKE
PAUSE > NUL
Goto MAIN

:SelectionDA20
Start "" https://en.wikipedia.org/wiki/Diamond_DA20_Katana
GOTO SelectionDiamond

:SelectionDimona
Start "" https://en.wikipedia.org/wiki/Diamond_HK36_Super_Dimona
GOTO SelectionDiamond

:SelectionDA40
Start "" https://en.wikipedia.org/wiki/Diamond_DA40_Diamond_Star
GOTO SelectionDiamond

:SelectionDA42
Start "" https://en.wikipedia.org/wiki/Diamond_DA42_Twin_Star
GOTO SelectionDiamond


:SelectionAviat
CLS
color 0A
ECHO Aviat
ECHO -----------------------------------------
ECHO -----Please Select a model-----
ECHO ----------------------------------------
ECHO 1. Special
ECHO 2. Eagle II
ECHO 3. Husky
ECHO 4. 152 (Cessna)

ECHO Press 'M' to return to manufacturer menu.
set /p INPUT="INPUT: "
IF /I '%INPUT%'=='1' GOTO SelectionSpecial
IF /I '%INPUT%'=='2' GOTO SelectionEagle
IF /I '%INPUT%'=='3' GOTO SelectionHusky
IF /I '%INPUT%'=='4' GOTO Selection152
IF /I '%INPUT%'=='M' GOTO MAKE

PAUSE > NUL
Goto MAIN

:SelectionSpecial
Start "" https://en.wikipedia.org/wiki/Pitts_Special
GOTO SelectionAviat

:SelectionEagle
Start "" https://en.wikipedia.org/wiki/Aviat_Eagle
GOTO SelectionAviat

:SelectionHusky
Start "" https://en.wikipedia.org/wiki/Aviat_Husky
GOTO SelectionAviat

:Selection152
Start "" https://en.wikipedia.org/wiki/Cessna_152
GOTO SelectionAviat


:SelectionPiper
CLS
color 0A
ECHO Piper Aircraft
ECHO -----------------------------------------
ECHO -----Please Select a model-----
ECHO ----------------------------------------
ECHO 1. PA-28 Cherokee
ECHO 2. PA-24 Comanche
ECHO 3. PA-31T Cheyenne
ECHO 4. PA-34 Seneca

ECHO Press 'M' to return to manufacturer menu.
set /p INPUT="INPUT: "
IF /I '%INPUT%'=='1' GOTO SelectionCherokee
IF /I '%INPUT%'=='2' GOTO SelectionComanche
IF /I '%INPUT%'=='3' GOTO SelectionCheyenne
IF /I '%INPUT%'=='4' GOTO SelectionSeneca
IF /I '%INPUT%'=='M' GOTO MAKE

PAUSE > NUL
Goto MAIN

:SelectionCherokee
Start "" https://en.wikipedia.org/wiki/Piper_PA-28_Cherokee
GOTO SelectionPiper

:SelectionComanche
Start "" https://en.wikipedia.org/wiki/Piper_PA-24_Comanche
GOTO SelectionPiper

:SelectionCheyenne
Start "" https://en.wikipedia.org/wiki/Piper_PA-31T_Cheyenne
GOTO SelectionPiper

:SelectionSeneca
Start "" https://en.wikipedia.org/wiki/Piper_PA-34_Seneca
GOTO SelectionPiper

:Selection7 

rem questions here: 
rem https://www.boldmethod.com/blog/quizzes/2021/08/do-you-know-these-six-private-pilot-checkride-questions/

echo .
echo - - - - - - - - - - - - - - -
echo .
echo Time to test your knowledge!
echo .
echo - - - - - - - - - - - - - - -
echo .
pause > nul
cls
:Question1
cls
color 0A
echo 1) You're a private pilot taking your friends up for a flight. 
ECHO You're unpacking your flight bag into the cockpit and realize you forgot your logbook at home. 
ECHO You do have your pilot certificate and medical. Can you fly?
ECHO ------------------
echo A) Yes, let's go.
echo B) Nope, go home and get the logbook.

set /p answer1= "Answer: "
if %answer1%==a goto Q1Correct
if %answer1%==b goto Q1Incorrect
pause > nul
goto MAIN 

:Q1Correct
cls
color 2F
echo You got it right!!
echo Private pilots don't need to carry their logbook to fly, but they do need their certificate and medical.
pause> nul
goto Question2

:Q1Incorrect
cls
color 4F
echo Sorry, try again!!
pause> nul
goto Question1

:Question2
cls
color 0A
ECHO 2) You're descending into an airport for landing. What is your maximum flap extended speed?
ECHO ----------------
ECHO A) VA
ECHO B) Vy
ECHO C) Vne 
ECHO D) Vfe

set /p answer2="Answer: "
if %answer2%==a goto Q2Incorrect
if %answer2%==b goto Q2Incorrect
if %answer2%==c goto Q2Incorrect
if %answer2%==d goto Q2Correct
pause > nul
goto MAIN 

:Q2Correct
cls
color 2F
echo You got it right!!
echo Vfe is the maximum flap extended speed, 
echo and it's marked on your airspeed indicator as the top of the white arc. 
echo Some aircraft allow partial flap extension above Vfe, 
echo but you need to check your POH for that.
pause> nul
goto Question3

:Q2Incorrect
cls
color 4F
echo Sorry, try again!!
pause> nul
goto Question2

:Question3
cls
color 0A
ECHO 3) VFR cruising altitudes are based on:
ECHO ----------------
ECHO A) True course
ECHO B) Magnetic course

set /p answer3="Answer: "
if %answer3%==a goto Q3Incorrect
if %answer3%==b goto Q3Correct
pause > nul
goto MAIN 

:Q3Correct
cls
color 2F
echo You got it right!!
echo FAR 91.159 specifies altitudes by magnetic course.
pause> nul
goto Question4

:Q3Incorrect
cls
color 4F
echo Sorry, try again!!
pause> nul
goto Question3

:Question4
cls
color 0A
ECHO 4) When do you need to use your aircraft's position lights?
ECHO -----------------------------------------------------------
ECHO A) 30 minutes after sunset, 30 minutes before sunrise
ECHO B) Sunset to sunrise
ECHO C) Beginning of civil twilight to the end of civil twilight
ECHO D) 1 hour after sunset ending 1 hour before sunrise
 
 set /p answer4="Answer: "
if %answer4%==a goto Q4Incorrect
if %answer4%==b goto Q4Correct
if %answer4%==c goto Q4Incorrect
if %answer4%==d goto Q4Incorrect
pause > nul
goto MAIN 

:Q4Correct
cls
color 2F
echo You got it right!!
echo You need to use position lights (nav lights) from sunset to sunrise.
pause> nul
goto Question5

:Q4Incorrect
cls
color 4F
echo Sorry, try again!!
pause> nul
goto Question4

:Question5
cls
color 0A
ECHO 5) Above what altitude do you need to provide supplemental oxygen to your passengers?
ECHO ----------------
ECHO A) 12,500
ECHO B) 14,000
ECHO C) 15,000
ECHO D) 18,000

set /p answer5="Answer: "
if %answer5%==a goto Q5Incorrect
if %answer5%==b goto Q5Inorrect
if %answer5%==c goto Q5Correct
if %answer5%==d goto Q5Incorrect
pause > nul
goto MAIN 

:Q5Correct
cls
color 2F
echo You got it right!!
echo FAR 91.211 requires you to provide passengers with supplemental oxygen at cabin pressure altitudes above 15,000'.
Echo .
eCHO You have completed the quiz!
pause> nul
goto MAIN

:Q5Incorrect
cls
color 4F
echo Sorry, try again!!
pause> nul
goto Question5

:Selection8
cls
color 1E
ECHO -------------------------------------------------
ECHO -----Please Select an option for timekeeping-----
ECHO ---------or press R to return to main menu-------
ECHO -------------------------------------------------
ECHO Press 1 to log today's flight hours.
ECHO Press 2 to access a previous day's flight hours.
set /p timeselection="Selection: "
if %timeselection%==1 goto logtime
if %timeselection%==2 goto querytime
IF /I %timeselection%=='R' GOTO MAIN
pause> nul
goto MAIN

:logtime
cls
Echo Please enter today's date (mm-dd-yy):
set /p date="Date: "
ECHO Please enter the amount of hours flown:
set /p hours="Hours: " 

if not exist "%~dp0FlightLog\" mkdir "%~dp0FlightLog"
Echo You have logged %hours% hours for %date%. > "%~dp0FlightLog\%date%.txt"

Echo You have logged %hours% for %date%.
Pause> nul
GOTO MAIN 

:querytime
cls
ECHO Please enter a previous flight date (mm-dd-yy:)
set /p querydate="Date: "

if not exist "%~dp0FlightLog\%querydate%.txt" (
	goto blank
) else (
	type "%~dp0FlightLog\%querydate%.txt"
)
pause > nul
goto MAIN

:blank
cls
ECHO You do not have any flight hours logged for %querydate%.
Pause> nul
GOTO MAIN 

:Selection9
cls
color 3F
setlocal enableextensions enabledelayedexpansion

set lines=16


set "line1=Flight is freedom in its purest form,"
set "line2=To dance with the clouds which follow a storm;"
set "line3=To roll and glide, to wheel and spin,"
set "line4=To feel the joy that swells within;"
set "line5=To leave the earth with its troubles and fly,"
set "line6=And know the warmth of a clear spring sky;"
set "line7=Then back to earth at the end of a day,"
set "line8=Released from the tensions which melted away."
set "line9=Should my end come while I am in flight,"
set "line10=Whether brightest day or darkest night;"
set "line11=Spare me your pity and shrug off the pain,"
set "line12=Secure in the knowledge that I'd do it again;"
set "line13=For each of us is created to die,"
set "line14=And within me I know,"
set "line15=I was born to fly."
set "line16= - Gary Claud Stokor"


for /f %%a in ('"prompt $H&for %%b in (1) do rem"') do set "BS=%%a"

for /L %%a in (1,1,%lines%) do set num=0&set "line=!line%%a!"&call :type

pause>nul
goto :EOF

:type
set "letter=!line:~%num%,1!"
set "delay=%random%%random%%random%%random%%random%%random%%random%"
set "delay=%delay:~-6%"
if not "%letter%"=="" set /p "=a%bs%%letter%" <nul

:: adjust the 4 in the line below: higher is faster typing speed

for /L %%b in (1,4,%delay%) do rem
if "%letter%"=="" echo.&goto :EOF
set /a num+=1
goto :type

Pause> nul
GOTO MAIN 

:Quit
CLS

ECHO ==============THANKYOU===============
ECHO -------------------------------------
ECHO ======PRESS ANY KEY TO CONTINUE======

PAUSE>NUL
EXIT