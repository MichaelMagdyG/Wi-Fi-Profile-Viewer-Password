# Wi-Fi Profile Viewer

This batch script displays all saved Wi-Fi profiles on your Windows system and allows you to view the details of a selected profile, including the password.

## Features

- Lists all saved Wi-Fi profiles.
- Allows the user to select a profile by number.
- Displays detailed information about the selected Wi-Fi profile, including the password.

## Prerequisites

- Windows operating system.
- Administrator privileges to run the `netsh` command.

## How to Use

1. Download the script file (`wifi_profile_viewer.bat`) to your computer.
2. Open a Command Prompt with Administrator privileges.
3. Navigate to the folder containing the script.
4. Run the script by typing:
   ```cmd
   wifi_profile_viewer.bat
   ```
5. Follow the on-screen instructions:
   - The script will display a numbered list of saved Wi-Fi profiles.
   - Enter the number corresponding to the profile you want to view.
   - The script will display the details of the selected Wi-Fi profile.

## Example Output

```plaintext
Listing all Wi-Fi profiles...
1 - MyNetwork
2 - HomeWiFi
3 - OfficeNet

Enter the number of the Wi-Fi profile to view details: 1
Displaying details for "MyNetwork"...
<Details of MyNetwork>
```

## Notes

- The script uses the `netsh wlan show profiles` command to fetch Wi-Fi profile information.
- Only profiles saved on the current system will be listed.
- You must have administrator privileges to view Wi-Fi profile details, including passwords.

## Troubleshooting

- **Profiles not showing:** Ensure you run the script with administrator privileges.
- **Invalid selection:** Make sure you enter a valid number from the list of profiles.
- **Password not displayed:** If the password is not visible, it may not have been saved on your system.

## License

This script is provided under the MIT License. Feel free to modify and distribute it.

---

Enjoy using the Wi-Fi Profile Viewer!
```

You can modify this file as needed to better suit your script's details or intended use case. Save it as `README.md` in the same directory as your script.