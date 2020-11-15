import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';


class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool lockInBackground = true;
  bool notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SettingsList(

        backgroundColor: Color(0xFFFEFDFE),

        sections: [


          SettingsSection(
            title: 'Mes Postes/Favoris',
            // titleTextStyle: TextStyle(fontSize: 30),
            tiles: [
              SettingsTile(
                title: 'Post(s) Lost and Found',
                leading: Icon(Icons.pets),

              ),
              SettingsTile(
                title: 'Post(s) Adoption',
                leading: Icon(Icons.home),
                onTap: () => print('e'),
              ),
              SettingsTile(
                title: 'Mes Favoris',
                leading: Icon(Icons.favorite),
                onTap: () => print('e'),
              ),
            ],
          ),
          SettingsSection(
            title: 'Mes informations ',
            tiles: [
              SettingsTile(title: 'Mon Profil', leading: Icon(Icons.supervised_user_circle)),
              SettingsTile(title: 'Sign out', leading: Icon(Icons.exit_to_app)),
            ],
          ),
          SettingsSection(
            title: 'Security',
            tiles: [

              SettingsTile.switchTile(
                title: 'Change password',
                leading: Icon(Icons.lock),
                switchValue: true,
                onToggle: (bool value) {},
              ),
              SettingsTile.switchTile(
                title: 'Enable Notifications',
                enabled: notificationsEnabled,
                leading: Icon(Icons.notifications_active),
                switchValue: true,
                onToggle: (value) {},
              ),
            ],
          ),


        ],
      ),

    );
  }
}


 Widget _settings() {
  return SettingsList(
    backgroundColor: Color(0xFFFEFDFE),
    sections: [
      SettingsSection(
        title: 'Mes Postes/Favoris',
        // titleTextStyle: TextStyle(fontSize: 30),
        tiles: [
          SettingsTile(
            title: 'Post(s) Lost and Found',
            leading: Icon(Icons.pets),

          ),
          SettingsTile(
            title: 'Post(s) Adoption',
            leading: Icon(Icons.home),
            onTap: () => print('e'),
          ),
          SettingsTile(
            title: 'Mes Favoris',
            leading: Icon(Icons.favorite),
            onTap: () => print('e'),
          ),
        ],
      ),
      SettingsSection(
        title: 'Mes informations ',
        tiles: [
          SettingsTile(title: 'Mon Profil', leading: Icon(Icons.supervised_user_circle)),
          SettingsTile(title: 'Sign out', leading: Icon(Icons.exit_to_app)),
        ],
      ),
      SettingsSection(
        title: 'Security',
        tiles: [

          SettingsTile.switchTile(
            title: 'Change password',
            leading: Icon(Icons.lock),
            switchValue: true,
            onToggle: (bool value) {},
          ),
          SettingsTile.switchTile(
            title: 'Enable Notifications',
           // enabled: notificationsEnabled,
            leading: Icon(Icons.notifications_active),
            switchValue: true,
            onToggle: (value) {},
          ),
        ],
      ),


    ],
  );
 }