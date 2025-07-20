# Flutter Calculator App

A simple and elegant calculator app built with Flutter, offering basic arithmetic operations and a sleek UI.

## 🎯 Features
- ✅ Addition, subtraction, multiplication, and division  
- 🟰 Decimal support and clear (`CLEAR`) functionality  
- 📐 Responsive layout for varying screen sizes  
- 🎨 Dark themes 

## 🖼️ Screenshots / Demo
_Add here screenshots or a GIF to showcase the app in action._

## 🚀 Installation & Setup

1. **Clone the repository**  
   ```bash
   git clone https://github.com/seshathri044/flutter-calculator-app.git
   cd flutter-calculator-app```
2.Install dependencies
 ```bash
flutter pub get
```
3.Run the app
 ```bash
flutter run
```
For web: flutter run -d chrome

🧩 Code Structure
lib/main.dart – App entry point and Whole code is in this file

⚙️ Usage
Press digits and operators to build expressions

Tap = to calculate the result

Use DEL to remove the last character

Use AC to clear the entire expression

🛠️ How It Works
UI Layout – A display for expression/result and a grid of buttons.

Button Handler – Appends input or performs actions (clear, delete, evaluate).

Expression Evaluation – Uses math_expressions package to parse and compute the result.

📦 Dependencies
See pubspec.yaml for full list, including:

math_expressions – For parsing and evaluating expressions

provider or flutter_bloc (optional) – For managing state (if used)

🤝 Contributing
Fork the repo and create a branch (feature/xyz)

Make your changes and test

Submit a pull request with a detailed description

We’ll review and merge!

🐞 Issues & Feedback
Found a bug or have a suggestion? Please create an issue.

📄 License
