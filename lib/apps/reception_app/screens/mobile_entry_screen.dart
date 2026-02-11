import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'module_selection_screen.dart';

class MobileEntryScreen extends StatefulWidget {
  const MobileEntryScreen({super.key});

  @override
  State<MobileEntryScreen> createState() => _MobileEntryScreenState();
}

class _MobileEntryScreenState extends State<MobileEntryScreen> {
  final _formKey = GlobalKey<FormState>();
  final _mobileController = TextEditingController();

  @override
  void dispose() {
    _mobileController.dispose();
    super.dispose();
  }

  void _proceed() {
    if (_formKey.currentState!.validate()) {
      final mobile = '+91${_mobileController.text.trim()}';
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => ModuleSelectionScreen(mobile: mobile),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patient Registration'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Icon(
                    Icons.local_hospital,
                    size: 64,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Register Patient',
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Enter patient\'s mobile number to send health education materials',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[600],
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  TextFormField(
                    controller: _mobileController,
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    decoration: const InputDecoration(
                      labelText: 'Mobile Number',
                      prefixText: '+91 ',
                      border: OutlineInputBorder(),
                      hintText: '9876543210',
                      counterText: '',
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter mobile number';
                      }
                      if (value.trim().length != 10) {
                        return 'Mobile number must be 10 digits';
                      }
                      if (!RegExp(r'^[6-9]\d{9}$').hasMatch(value.trim())) {
                        return 'Please enter a valid Indian mobile number';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24),
                  FilledButton.icon(
                    onPressed: _proceed,
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text('Select Modules'),
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
