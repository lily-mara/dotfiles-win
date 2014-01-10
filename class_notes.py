import subprocess
import os
import sys

#defines the two arguments as the class and editor
vClass = int(sys.argv[1])
vEditorNum = int(sys.argv[2])
vDate = str(sys.argv[3])
sem = "Semester_1"

#reads the db_home variable and defines it as "dropbox"
dropbox = str(os.getenv('DB_HOME'))

#Sets the clasis variable based on the first argument in the command line
if vClass == 1:
    vClasis = "MTH-249"

if vClass == 2:
    vClasis = "KNH-150C"

if vClass == 3:
    vClasis = "CSE-174"

if vClass == 4:
    vClasis = "EAS-101"

if vClass == 5:
    vClasis = "ENG-112"

if vClass == 6:
    vClasis = "SPN-201"

#Sets the file variable to the correct file/folder based on the above if statements and the "sem" variable
vFile = dropbox+"\\College\\"+sem+"\\"+vClasis+"\\"+vClasis+"--"+vDate+".md"

#Sets the editor variable based on the second argument in the command line
if vEditorNum == 1:
    vEditor = "C:\Program Files\Sublime Text 2\sublime_text.exe"

if vEditorNum == 2:
    os.system(r"%(db)s\Scripts\Windows\Portable_Apps\UnxUtils\usr\local\wbin\touch.exe %(fil)s" % {'db': dropbox, 'fil': vFile})
    vEditor = dropbox+"\Scripts\Windows\Portable_Apps\WriteMonkey\WriteMonkey.exe"

if vEditor == 3:
    os.system(r"%(db)s\Scripts\Windows\Portable_Apps\UnxUtils\usr\local\wbin\touch.exe %(fil)s" % {'db': dropbox, 'fil': vFile})
    vEditor = r"C:\Program Files (x86)\MarkdownPad 2\MarkdownPad2.exe"


subprocess.call("%s %s" % (vEditor, vFile))
