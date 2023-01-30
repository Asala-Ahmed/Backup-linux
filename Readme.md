# **Backup Directory**
## **Overview**
---
The code script lab2.sh is in d irectory 6916-lab2. The code backup the data and files within the dir directory and store them in directories **named by the date-time** at which the backup occured in the backup directory if exists and if it doesn't exist a backup directory will be created.First of all the code makes the first directory and then the code runs in an infinite loop  and checks if any changes occur if yes then another backup copy is made else if no changes occur then no backup copy is made . The code checks if the backup copies reach the max number of copies **entered by the user** the oldest directory is removed to add the new directory which means that if many changes occur the backup directory will include the latest n changes where n=max number of backups.

---
___
## **Pre-requisites**
---
**Nothing would be required to run the code but if u don't find the make command working install the package

---
___
## **How to run?**
---
call make in the terminal followed by each parameter and assign values to parameters respectively and if no parameters are entered will follow the path given in the makefile.
### parameters
 1. dir -> directory you want to backup.
 1. backupdir -> directory you want to store backups in it.
 1. intervalsecs -> time interval you want to backup within.
 1. maxbackups -> max number of backups allowed to be in backup directory.

---
___
