# Quiz-App
A Quiz application developed using Flutter Framework.

# Build and run the app

## Run the app
1. First of all make sure flutter SDK is installed in your system. Simply type **flutter --version** command in your terminal, if it successfully returns the version of flutter that means it's already installed in the system.
2. Now either clone the project or download the zip.
3. Open the root folder of project i.e. **quiz_app** in your preferred IDE e.g. VSCode or Android Studio.
4. Connect a physical device or simulator with your system.
5. Open the terminal in the IDE, and run **flutter run** for **debug** or **flutter run --release** for **release** mode.
6. Once the build is successful the app will launch in selected physical device or simulator.

## Build the app
1. First of all make sure flutter SDK is installed in your system. Simply type **flutter --version** command in your terminal, if it successfully returns the version of flutter that means it's already installed in the system.
2. Now either clone the project or download the zip.
3. Open the root folder of project i.e. **quiz_app** in your preferred IDE e.g. VSCode or Android Studio.
4. Connect a physical device or simulator with your system.
5. Open the terminal in the IDE, and run **flutter build apk** to build a sharable .apk file.
6. Once the build is successful you can find the **.apk** file at **quiz_app/build/app/outputs/flutter-apk/app-release.apk** .


# Assumptions 
1. First of all a timer will run for 5 seconds, once timer is off, you will be navigated to the quiz screen automatically.
2. At the top number of question will be displayed in the appbar, along with that there is a progress bar to show the progress visually just below the appbar.
3. In Quiz Screen, next/submit button will be disabled until any option is not selected.
4. Once you select an option, if it's correct, container will become green else red. 
5. Any option of a particular question can be tapped only **ONCE** during the quiz.
6. Once all the 6 questions are completed, Submit button will be enabled.
7. After clicking submit button on 6th question, you'll be navigated to **Total Score Screen**.
8. On total score screen, if score is below 2 it's font color will be red else green.
9. If not satisfied with the score there will be a **Restart Button** which will start the quiz from Question 1 again.


# Note
The Quiz Questions and answers data is local to this project for demo purposes, any kind of dynamic data can also be implemented by using APIs etc by minimal changes.

