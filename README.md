# **Rubber Ducky Script**

## **Description**

This is a script meant to be used on a Rubber Ducky device to simulate a USB Drop Attack. 

This was made in the view of an IT Security team that had recently completed cybersecurity training and is doing this simulated attack in office to test how successful the training was by reviewing the data and information gathered to further improve training. This works by adding this script onto a raspberry pi pico and giving it casing to mirror a standard USB and to then leave it near work stations and common areas around the workplace, once this is plugged in it will have a 1.5 second delay to then instantly grabbing the ip, MAC address, username, if user has admin privileges and the exact date and time it was plugged in. The only thing the employee will see is a fullscreen red form giving a description on whats happened and how to close the form, this screen can not be closed by any way other than the desired input for us we set it to 'WHOOPS' so alt+f4, whoops or anything else other than all capital WHOOPS will display an error message but even if the employee managed to find a way to close this the information is already grabbed and sent to a folder on the IT system for analysis to see how security training can be improved. 

This script is designed to match any size monitor and recognises both key entry and button click entry and will respond to being force closed, there are mitigations you can set in place like restriction of running scripts and what devices can be plugged into a computer but keep in mind this device is recognised by the computer as a human input or keyboard and will bypass and force its way through most things.

The thought was taking a Red Team tool and adapting it to suit a Blue oriented task to further develop security awareness by giving them a face to face with the threat to eliminate the thought "Oh it would never happen to me". 

It is encouraged for you to use and build upon this script and see where experimenting and testing takes you. 

This is only to be used is situations where consent is given.

---
## **Table of Contents**
- <a href="#instructions">Instructions</a>
- <a href="#technologies-used">Technologies Used</a>
- <a href="#usage">Usage</a>
- <a href="#contributors">Contributors</a>
- <a href="#additional-links">Additional Links</a>

---
## **Instructions**
Add the script to the Ducky as well as the Visual Basic code:

DELAY 1000  
GUI r  
DELAY 500  
STRING powershell -NoP -NonI -W Hidden -Exec Bypass -File E:\script-name.ps1  

and once both scripts are added to the ducky simply plug it into any computer!


---
## **Technologies Used**

- PowerShell
- Visual Basic
- Windows Forms
- System Drawing

---

## **Usage**

This script in particular is used to further improve security training within a company but can be adapted to do anything needed within the relem of gathering system information and exporting it to a remote system.

---

## **License**

![GitHub License Badge](https://shields.io/badge/license-MIT-green)

---

## **Contributors**

[Julian Lang's Github Profile ](https://github.com/Joulescript).
---
[Saxon Krnel's Github Profile ](https://github.com/BACKFLIPS22).
---
[Jordan O'Grady's Github Profile ](https://github.com/JordanNotAvailable).
---

## **Additional Links**

If you'd like to learn more on what went into making this and why this was made please feel free to follow the links to our report and demonstration of this script!

[Report](https://docs.google.com/document/d/11v9DsLdA6I8pWnMSogHNkjHGFHQrAHn4/edit?usp=sharing&ouid=102308007870382689533&rtpof=true&sd=true)

[Video](https://drive.google.com/file/d/1oXmxXY7VOEZm_JRWWXC9f0B3EW45M8bU/view?usp=sharing)

[Extra Info](https://www.youtube.com/watch?v=xvFZjo5PgG0)
