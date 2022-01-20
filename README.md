# exanima-save-to-checkpoint
Powershell script that makes Exanima think latest save should be a checkpoint instead, so that it's loaded after death.
This script only renames files, eliminating possibility of data loss.
All potential file conflicts are avoided, old files with conflicting names are renamed.

Why I made this: my game got autosaved in a really dumb spot where I was forced to loot several containers and re-equip a ton of stuff if I wanted to have a chance of not dying. After 10+ attempts, I got sick of it and found a way for the game to treat normal exit saves as checkpoint saves. Stop wasting my time! 

Before running this script, ***!!!make sure you exit to Exanima Main menu!!!***. I am not responsible if something happens to your save if the game is not in Main menu or closed entirely.

How to use: download rsgtorcp.ps1; ensure Exanima is in Main Menu; execute rsgtorcp.ps1 by rightclick -> Execute in Powershell. 
Alternatively you can use Autohotkey and bind script execution to a button combination.
It is probably possible to add quickload functionality by writing a similar script that deletes latest .rsg file instead of renaming it, but I haven't tried it.

All current and previous (renamed) saves remain where they normally are: C:\Users\<YOUR USERNAME>\AppData\Roaming\Exanima
