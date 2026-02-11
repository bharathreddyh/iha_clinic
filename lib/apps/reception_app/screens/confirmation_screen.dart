import 'package:flutter/material.dart';
import '../../../core/models/module.dart';
import '../../../core/services/database_service.dart';
import '../../../core/services/sms_service.dart';
import 'success_screen.dart';

class ConfirmationScreen extends StatefulWidget {
  final String mobile;
  final List<Module> selectedModules;

  const ConfirmationScreen({
    super.key,
    required this.mobile,
    required this.selectedModules,
  });

  @override
  State<ConfirmationScreen> createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  final DatabaseService _dbService = DatabaseService();
  final SmsService _smsService = SmsService();
  bool _isSending = false;

  Future<void> _confirmAndSend() async {
    setState(() => _isSending = true);

    try {
      final registration = await _dbService.createRegistration(
        mobile: widget.mobile,
        moduleIds: widget.selectedModules.map((m) => m.id).toList(),
      );

      final smsSent = await _smsService.sendAccessLink(
        mobile: widget.mobile,
        token: registration.accessToken,
      );

      if (!mounted) return;

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (_) => SuccessScreen(
            mobile: widget.mobile,
            token: registration.accessToken,
            smsSent: smsSent,
          ),
        ),
        (route) => route.isFirst,
      );
    } catch (e) {
      if (!mounted) return;
      setState(() => _isSending = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: ${e.toString()}'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirm & Send'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Patient Details',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const Divider(),
                        ListTile(
                          leading: const Icon(Icons.phone),
                          title: const Text('Mobile Number'),
                          subtitle: Text(widget.mobile),
                          contentPadding: EdgeInsets.zero,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Selected Modules (${widget.selectedModules.length})',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const Divider(),
                        ...widget.selectedModules.map(
                          (module) => ListTile(
                            leading: const Icon(Icons.check_circle,
                                color: Colors.green),
                            title: Text(module.name),
                            subtitle: Text(module.description),
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Card(
                  color: Colors.blue[50],
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Icon(Icons.info_outline, color: Colors.blue),
                        SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            'An SMS with the access link will be sent to the patient. The link will be valid for 48 hours.',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                FilledButton.icon(
                  onPressed: _isSending ? null : _confirmAndSend,
                  icon: _isSending
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                      : const Icon(Icons.send),
                  label: Text(_isSending ? 'Sending...' : 'Confirm & Send SMS'),
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
