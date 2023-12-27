# Coding Challenge README

## Challenge Description

In this coding challenge prospects were asked to build a mobile app based on a UI design provided by the interviewer. The task instructions are as follows:
-Prospects will create a new business profile, then revert to the initial screen with the new profile active and listed among the active businesses.
The task will be performed using the provided Figma prototype and its components.

## Project Structure

I used the flutter getx clean architecture, separating my UI code from my business login code. The structure has a lib folder that holds the entire code. Inside the lib folder are 2 folders:
1. Infrastructure - Contains files that are globally accessible within the app like the navigation, bindings, theme and helper functions
2. Presentation - Contains the presentation screens and their controllers

## Technologies Used

The language in use is dart, the framework used is flutter.
Other packages used are:
-getx
-image_picker
-imager_cropper
-intl
-flutter_svg
-google_fonts



```bash
# Example setup instructions (modify based on your project)
1. Clone the repository: `git clone https://github.com/your-username/your-project.git`
2. Navigate to the project directory: `cd your-project`
3. Install dependencies: `flutter pub get`
4. Run the project: `flutter run`
