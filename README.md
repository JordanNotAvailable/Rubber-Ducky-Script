# **Rubber Ducky Script**

## **Description**

This is a script meant to be used on a Rubber Ducky device to simulate a USB Drop Attack. This was made in the view of an IT Securty team that had recently completed security training and is doing this simulated attack to test how successful the training was by reviewing the data and information gathered to further improve training. The thought was taking a Red Team tool and adapting it to suit a Blue oriented task to further develop security awareness, can't let Red Team have all the fun! It is encouraged for you to use and build upon this script and see where experimenting and testing takes you. This is only to be used is situations where consent is given.

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

[Video]()

[Extra Info](https://www.youtube.com/watch?v=xvFZjo5PgG0)
