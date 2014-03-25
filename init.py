#python3 #this script bootstraps my vim configuration on any new windows system.
#dependencies: git, python3

import os
from subprocess import call
from tkinter.filedialog import askdirectory
from tkinter import Tk

home_path = os.environ.get('HOMEPATH')

vimfile_path = home_path + '\\vimfiles'
dot_vim_path = home_path + '\\.vim'
vrapper_path = home_path + '\\.vrapperrc'

has_vimfiles = os.path.exists(vimfile_path)
has_dot_vim = os.path.exists(dot_vim_path)
has_vrapper_link = os.path.exists(vrapper_path)

input('Please ensure that you are running this program with admin privaledges...')

if not has_vimfiles:
	input('Press ENTER to clone vimfiles repo...')
	call(['git', 'clone', 'https://github.com/natemara/vimfiles', home_path + '\\vimfiles'])
	print()
	input('Press ENTER then select top folder of your vim install...')

	Tk().withdraw()
	vim_folder = askdirectory()

	call(['mklink', vim_folder + '\\.vimrc', vimfile_path + '\\.vimrc'])
	call(['mklink', vim_folder + '\\configs', vimfile_path + '\\configs'])


if not has_dot_vim:
	input('Press ENTER to make .vim symlink...')
	call(['mklink', '/d', home_path + '\\.vim', vimfile_path])
	print()

if not has_vrapper_link:
	input('Press ENTER to make .vrapperrc symlink...')
	call(['mklink', vrapper_path, vimfile_path + '\\.vrapperrc'])
	print()

