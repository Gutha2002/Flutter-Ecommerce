import 'package:flutter/material.dart';
import 'package:mediart/screens/otp_page.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Sri Lakshmi Venkateshwara\nVegetables & Fruits Traders',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF43A047),
                    letterSpacing: 1.0,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    )
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    TabBar(
                      labelColor: const Color(0xFF43A047),
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: const Color(0xFF43A047),
                      indicatorWeight: 3,
                      tabs: const [
                        Tab(text: 'Create Account'),
                        Tab(text: 'Log In'),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 400,
                      child: TabBarView(
                        children: [
                          _buildCreateAccountTab(),
                          _buildLoginTab(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCreateAccountTab() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Text("Create Account",style: TextStyle(fontSize: 20),),
          SizedBox(height: 5,),
          _buildTextField('Email'),
          const SizedBox(height: 15),
          _buildTextField('Phone number'),
          const SizedBox(height: 15),
          _buildPasswordField('Password'),
          const SizedBox(height: 15),
          _buildPasswordField('Confirm Password'),
          const SizedBox(height: 30),
          _buildGetStartedButton(),
        ],
      ),
    );
  }

  Widget _buildGetStartedButton() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OTPVerificationScreen(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color(0xFF00C853),
          borderRadius: BorderRadius.circular(30),
        ),
        child: const Center(
          child: Text(
            'Get Started',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginTab() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          _buildTextField('Email'),
          const SizedBox(height: 15),
          _buildPasswordField('Password'),
          const SizedBox(height: 30),
          _buildButton('Log In'),
        ],
      ),
    );
  }

  Widget _buildTextField(String hintText) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.grey.shade200,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildPasswordField(String hintText) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.grey.shade200,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        suffixIcon: Icon(Icons.visibility_off, color: Colors.grey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  Widget _buildButton(String text) {
    return ElevatedButton(
      onPressed: null,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF00C853),
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
