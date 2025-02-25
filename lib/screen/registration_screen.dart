import 'package:dart/screen/verify_email_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        elevation: 0,
        title: const Text(
          'تسجيل',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  textDirection: TextDirection.rtl, 
                  children: [
                    const Center(
                      child: Column(
                        children: [
                          Text(
                            'إنشاء حسابك',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'بعد اكتمال التسجيل يمكنك رؤية منتجات الفرص لدينا',
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    
                    _buildTextField(label: 'اسم المستخدم', hintText: 'اكتب اسمك هنا'),
                    _buildTextField(label: 'بريد إلكتروني', hintText: 'اكتب بريدك الإلكتروني هنا'),
                    _buildPasswordField(), 
                    _buildPhoneNumberField(),

                    const SizedBox(height: 20),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                        ),
                        onPressed: () {

                          Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => VerifyEmailScreen(),
      ),
    );
                        },
                        child: const Text(
                          'اشتراك',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
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

  Widget _buildTextField({required String label, String? hintText, bool isPassword = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.rtl,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.right,
        ),
        const SizedBox(height: 5),
        TextField(
          obscureText: isPassword,
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            hintText: hintText,
            border: const UnderlineInputBorder(),
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }

  Widget _buildPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.rtl,

      children: [
        const Text(
          'كلمة المرور',
          style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right,

        ),
        const SizedBox(height: 5),
        TextField(
           obscureText: _obscurePassword,
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            hintText: '••••••••••••••••••••••••••••',
            border: const UnderlineInputBorder(),
            prefixIcon: IconButton(
              icon: Icon(
                _obscurePassword ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
Widget _buildPhoneNumberField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      textDirection: TextDirection.rtl,
            children: [
        const Text(
          'رقم الهاتف',
          style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.right,

        ),
        const SizedBox(height: 5),
        IntlPhoneField(
          decoration: const InputDecoration(
            labelText: 'رقم الهاتف',
            border: OutlineInputBorder(),
            floatingLabelAlignment: FloatingLabelAlignment.start,
          ),
          textAlign: TextAlign.right,
          initialCountryCode: 'SA',
          onChanged: (phone) {
            print(phone.completeNumber);
          },
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}

