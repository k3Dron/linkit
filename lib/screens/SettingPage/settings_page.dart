import 'package:flutter/material.dart';
import 'package:linkit/screens/SettingPage/Components/profile_card.dart';
import 'package:linkit/screens/SettingPage/Components/section_header.dart';
import 'package:linkit/screens/SettingPage/Components/settings_switch_tile.dart';
import 'package:linkit/screens/SettingPage/Components/settings_tile.dart';
import 'package:linkit/services/SettingsServices/logout.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool pushNotifications = true;
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("linkit", style: theme.textTheme.headlineMedium)
          ],
        ),
      ),
      body: ListView(
        children: [
          // Profile section
          const ProfileCard(
            name: "Yennefer Doe",
            imageurl: "https://i.pravatar.cc/150?img=1",
          ),

          const Divider(height: 1),
          const SectionHeader(title: "Account Settings"),

          SettingsTile(
            title: "Edit profile",
            trailingIcon: Icons.chevron_right,
            onTap: () {},
          ),
          SettingsTile(
            title: "Change password",
            trailingIcon: Icons.chevron_right,
            onTap: () {},
          ),
          SettingsTile(
            title: "Add a payment method",
            trailingIcon: Icons.add,
            onTap: () {},
          ),
          SettingsSwitchTile(
            title: "Push notifications",
            value: pushNotifications,
            onChanged: (value) =>
                setState(() => pushNotifications = value),
          ),
          SettingsSwitchTile(
            title: "Dark mode",
            value: darkMode,
            onChanged: (value) {
              setState(() => darkMode = value);
              // TODO: hook with theme switching logic
            },
          ),

          const Divider(height: 1),
          const SectionHeader(title: "More"),

          SettingsTile(
            title: "About us",
            trailingIcon: Icons.chevron_right,
            onTap: () {},
          ),
          SettingsTile(
            title: "Privacy policy",
            trailingIcon: Icons.chevron_right,
            onTap: () {},
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: firebaseLogout, 
            child: Text('Log Out'))
        ],
      ),
    );
  }
}
