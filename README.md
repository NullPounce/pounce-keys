![GitHub Repo stars](https://img.shields.io/github/stars/NullPounce/pounce-keys?style=social) 
![Linode](https://img.shields.io/badge/downloads-35k+-green) 
![GitHub commit activity](https://img.shields.io/github/commit-activity/y/NullPounce/Pounce-Keys) 
![GitHub](https://img.shields.io/github/license/NullPounce/Pounce-Keys)     
![Linode](https://img.shields.io/badge/GMAIL-DISCORD-green)

FOR PENTESTING ANDROID APPS ONLY! THIS MAY BE ARCHIVED AND REWORKED DUE TO MISS USE


<!-- PROJECT LOGO -->
<br />
<div align="center">
<a href="https://www.nullpounce.com/">                                                  
    <img src="https://github.com/NullPounce/pounce-keys/blob/main/demo.gif">
  </a>




# Android Accessibility Security Lab

> Defensive research project for studying Android Accessibility Service abuse paths, endpoint telemetry, user-risk indicators, and mitigation strategies in controlled lab environments.

This repository is retained as a **defensive security research reference**. Its purpose is to help developers, SOC analysts, mobile security teams, and IT administrators understand how Android Accessibility Services can be abused, what user-visible and endpoint-level signals may appear, and how organizations can reduce risk through configuration, monitoring, and user education.

## Status

This project is being reworked from an older proof-of-concept into a defensive research and detection reference.

No support is provided for unauthorized monitoring, credential collection, covert deployment, persistence, bypassing security controls, or use against third-party devices. Do not run security research tools on any device, account, application, or network you do not own or have explicit written permission to test.

## Research goals

This lab is focused on answering defensive questions:

- What risks are introduced when a user enables an untrusted Accessibility Service?
- What indicators may be visible to a user, administrator, MDM, EDR, or SOC team?
- How can developers reduce exposure to input-event abuse in sensitive application flows?
- What should IT/security teams look for when reviewing Android devices for suspicious accessibility permissions?
- How can security awareness training explain this risk in practical, non-technical language?

## What this project demonstrates

- Android Accessibility Service permission risk and consent flow concerns
- User-awareness gaps around enabling high-trust mobile permissions
- Mobile endpoint telemetry concepts relevant to detection engineering
- Defensive review of app behavior, sensitive fields, and notification exposure
- Security documentation, mitigation notes, and investigation checklists
- How mobile security risks can be explained to users, developers, and SOC teams

## Defensive use cases

This repository can be used as a reference for:

- Mobile security awareness training
- Android application security reviews
- SOC triage playbooks for suspicious mobile accessibility services
- MDM policy discussions around accessibility permissions
- Developer education for sensitive input handling
- Blue-team research into abuse of legitimate OS features

## Mitigation notes

For users and IT teams:

- Review Android Accessibility settings regularly.
- Disable any Accessibility Service that is not clearly trusted and required.
- Be cautious of apps that request Accessibility access without a clear accessibility-related reason.
- Turn off password visibility where appropriate.
- Keep Android, browsers, messaging apps, and security tools updated.
- Use MDM or enterprise mobility controls where available.
- Educate users that Accessibility access is highly privileged and should not be granted casually.

For developers:

- Treat sensitive input flows carefully.
- Avoid exposing sensitive information unnecessarily through UI text, notifications, or autofill-like surfaces.
- Test how sensitive fields behave when Accessibility Services are enabled.
- Document expected behavior for sensitive screens and authentication flows.
- Consider layered protections for high-risk actions such as authentication, account recovery, payments, and administrative workflows.

For SOC and security teams:

- Inventory devices with enabled Accessibility Services.
- Review newly installed apps requesting high-risk permissions.
- Correlate unusual app installs, permission changes, notification access, VPN changes, and account security events.
- Add mobile-permission abuse to phishing and social-engineering awareness training.
- Document escalation paths for suspicious mobile endpoint behavior.

## Suggested investigation checklist

When reviewing a potentially suspicious Android device, verify:

- Which Accessibility Services are enabled
- When the relevant application was installed or updated
- Whether the application requested other high-risk permissions
- Whether the app has notification access, background privileges, VPN access, or device admin privileges
- Whether the user was prompted through social engineering to enable the service
- Whether account alerts, MFA prompts, or suspicious sign-ins occurred around the same time
- Whether the app is known, trusted, and required for a legitimate accessibility need

## Responsible use

This project is for **authorized defensive research, education, and detection engineering only**. It is not intended for unauthorized monitoring or use against other people, organizations, or devices.

If you are using this material for training, testing, or research, keep it in a controlled lab and obtain written authorization first.

## Credits

This project was originally created as an Android security learning project and is being reworked into a defensive research reference focused on Accessibility Service risk, mobile endpoint telemetry, and mitigation guidance.

## License

See the repository license for usage terms.



⚖️ Legal Disclaimer: For Educational Purpose Only


