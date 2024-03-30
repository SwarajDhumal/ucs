import 'package:flutter/material.dart';
import 'emergency_contact_card.dart';

class EmergencyContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Emergency Contact'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EmergencyContactCard(
                  icon: Icons.local_hospital,
                  title: 'Emergency Services',
                  contacts: [
                    'Police: 911',
                    'Fire Department: 911',
                    'Medical Emergency: 911',
                  ],
                ),
                SizedBox(height: 20),
                EmergencyContactCard(
                  icon: Icons.child_care,
                  title: 'Child Safety',
                  contacts: [
                    'National Center for Missing & Exploited Children: 1-800-843-5678',
                    'Childhelp National Child Abuse Hotline: 1-800-422-4453',
                    'Poison Control Center: 1-800-222-1222',
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
