import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
// This widget is the root of your application.
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Github Login',
theme: ThemeData(
primarySwatch: Colors.blue,
),
home: LoginPage(),
);
}
}
class LoginPage extends StatefulWidget {
@override
_LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State {
final emailController = TextEditingController();
final passwordController = TextEditingController();
bool _rememberMe = false;
@override
Widget build(BuildContext context) {
return Scaffold(
resizeToAvoidBottomInset: false,
body: Container(
decoration: BoxDecoration(
gradient: LinearGradient(
begin: Alignment.topCenter,
end: Alignment.bottomCenter,
colors: [
Colors.blue,
Colors.lightBlueAccent,
],
),
),
child: Stack(
children: [
Padding(
padding: const EdgeInsets.only(top: 100.0),
child: Column(
children: [
Icon(Icons.person, size: 100, color: Colors.white,),
SizedBox(height: 20,),
Text("Sign In", style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
SizedBox(height: 20,),
Padding(
padding: const EdgeInsets.symmetric(horizontal: 30.0),
child: Column(
children: [
TextFormField(
controller: emailController,
keyboardType: TextInputType.emailAddress,
decoration: InputDecoration(
hintText: "Enter your email",
labelText: "Email",
fillColor: Colors.white.withOpacity(0.7),
filled: true,
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(15),
),
),
validator: (value) {
if (value.isEmpty) {
return 'Please enter some text';
}
return null;
},
),
SizedBox(height: 20,),
TextFormField(
controller: passwordController,
keyboardType: TextInputType.text,
obscureText: true,
decoration: InputDecoration(
hintText: "Enter your password",
labelText: "Password",
fillColor: Colors.white.withOpacity(0.7,),
filled: true,
border: OutlineInputBorder(
borderRadius: BorderRadius.circular(15),
),
),
validator: (value) {
if (value.isEmpty) {
return 'Please enter some text';
}
return null;
},
),
SizedBox(height: 20,),
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Row(
children: [
Checkbox(
value: _rememberMe,
onChanged: (value) {
setState(() {
_rememberMe = value;
});
},
checkColor: Colors.white,
activeColor: Colors.lightBlueAccent,
),
Text("Remember me", style: TextStyle(fontSize: 16, color: Colors.white),),
],
),
TextButton(
onPressed: (){},
child: Text("Forgot Password?", style: TextStyle(fontSize: 16, color: Colors.white),),
),
],
),
SizedBox(height: 20,),
SizedBox(
width: double.infinity,
child: ElevatedButton(
onPressed: (){},
child: Text("Login", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
style: ButtonStyle(
backgroundColor: MaterialStateProperty.all(Colors.white),
shape: MaterialStateProperty.all(
RoundedRectangleBorder(
borderRadius: BorderRadius.circular(15),
),
),
padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15)),
),
),
),
SizedBox(height: 20,),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Text("Don't have an account?", style: TextStyle(fontSize: 16, color: Colors.white),),
TextButton(
onPressed: (){},
child: Text("Sign Up", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
),
],
),
SizedBox(height: 50,),
],
),
),
],
),
),
],
),
),
);
}
}