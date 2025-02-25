import 'package:flutter/material.dart';

class UpdatePasswordScreen extends StatefulWidget {
  const UpdatePasswordScreen({super.key});

  @override
  _UpdatePasswordScreenState createState() => _UpdatePasswordScreenState();
}

class _UpdatePasswordScreenState extends State<UpdatePasswordScreen> {
  bool _obscureCurrentPassword = true;
  bool _obscureNewPassword = true;
  bool _obscureConfirmNewPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        elevation: 0,
        title: const Text(
          'تحديث كلمة المرور',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
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
                            'تحديث كلمة المرور',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'يرجى إدخال كلمة المرور الحالية والجديدة',
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),

                    _buildPasswordField('كلمة المرور الحالية', _obscureCurrentPassword, (value) {
                      setState(() {
                        _obscureCurrentPassword = !_obscureCurrentPassword;
                      });
                    }),

                    _buildPasswordField('كلمة المرور الجديدة', _obscureNewPassword, (value) {
                      setState(() {
                        _obscureNewPassword = !_obscureNewPassword;
                      });
                    }),

                    _buildPasswordField('تأكيد كلمة المرور الجديدة', _obscureConfirmNewPassword, (value) {
                      setState(() {
                        _obscureConfirmNewPassword = !_obscureConfirmNewPassword;
                      });
                    }),

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
                          // Handle password update logic
                        },
                        child: const Text(
                          'تحديث',
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

  Widget _buildPasswordField(String label, bool obscure, Function onToggle) {
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
          obscureText: obscure,
          textAlign: TextAlign.right,
          decoration: InputDecoration(
            hintText: '•••••••••••••••',
            border: const UnderlineInputBorder(),
            suffixIcon: IconButton(
              icon: Icon(obscure ? Icons.visibility : Icons.visibility_off),
              onPressed: () => onToggle(obscure),
            ),
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
