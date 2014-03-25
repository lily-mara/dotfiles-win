#python3 #this script bootstraps my vim configuration on any new windows system.
#dependencies: git, python3

import os
from subprocess import call
from tkinter.filedialog import askdirectory
from tkinter import Tk

home_path = os.environ.get('HOMEPATH')

has_vimfiles = os.path.exists(home_path + '\\vimfiles')
has_dot_vim = os.path.exists(home_path + '\\.vim')
has_vrapper_link = os.path.exists(home_path + '\\.vrapperrc')

input('Please ensure that you are running this program with admin privaledges...')

if not has_vimfiles:
	input('Press ENTER to clone vimfiles repo...')
	call(['git', 'clone', 'https://github.com/natemara/vimfiles', home_path + '\\vimfiles'])
	print()
	input('Press ENTER then select top folder of your vim install...')

	Tk().withdraw()
	vim_folder = askdirectory()

	call(['mklink', vim_folder + '\\.vimrc', home_path + '\\vimfiles\\.vimrc'])
	call(['mklink', vim_folder + '\\configs', home_path + '\\vimfiles\\configs'])


if not has_dot_vim:
	input('Press ENTER to make .vim symlink...')
	call(['mklink', '/d', home_path + '\\.vim', home_path + '\\vimfiles'])
	print()

if not has_vrapper_link:
	input('Press ENTER to make .vrapperrc symlink...')
	call(['mklink', home_path + '\\.vrapperrc', home_path + '\\vimfiles\.vrapperrc'])
	print()

