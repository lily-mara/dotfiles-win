;time and date stamp
::/now::
FormatTime, Time, ,yyyy-MM-dd--HH-mm
SendInput, %Time%
Return

;time stamp
::ttt::
FormatTime, Time, ,HH:mm
SendInput, %Time%
Return

;date stamp
::ddd::
FormatTime, Time, ,yyyy-MM-dd
SendInput, %Time%
Return

;Lorem Ipsum
:::Lorem::
SendInput, Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Return
