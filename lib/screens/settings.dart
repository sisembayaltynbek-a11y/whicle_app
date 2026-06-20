import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static const routeName = '/settings';

  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings'), centerTitle: false),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _settingTile(
              icon: Icons.person_outline,
              title: 'Profile',
              subtitle: 'Manage your personal information',
            ),

            _settingTile(
              icon: Icons.notifications_outlined,
              title: 'Notifications',
              subtitle: 'Control notification preferences',
            ),

            _settingTile(
              icon: Icons.dark_mode_outlined,
              title: 'Appearance',
              subtitle: 'Customize app theme',
            ),

            _settingTile(
              icon: Icons.security_outlined,
              title: 'Privacy & Security',
              subtitle: 'Manage your account security',
            ),

            _settingTile(
              icon: Icons.help_outline,
              title: 'Help & Support',
              subtitle: 'Get assistance and contact support',
            ),

            _settingTile(
              icon: Icons.info_outline,
              title: 'About App',
              subtitle: 'Version information and details',
            ),

            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.logout),
                  label: const Text('Logout', style: TextStyle(fontSize: 16)),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  static Widget _settingTile({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: CircleAvatar(child: Icon(icon)),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {},
      ),
    );
  }
}
