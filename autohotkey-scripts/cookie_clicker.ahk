^!C::
Click, 342, 528 Left, Down
Click, 342, 528 Left, Up
Loop
{
  ;If the mouse moves, exit the loop
  MouseGetPos, X2, Y2
  if (342 <> x2) or (528 <> y2)
    break

  ;If user presses "f1" click the "cursor" button
  if GetKeyState("F1","P")
  {
    Click, 1761, 249 Left, Down
    Click, 1761, 249 Left, Up
  }

  ;If user presses "f2" click the "grandma" button
  if GetKeyState("F2","P")
  {
    Click, 1761, 314 Left, Down
    Click, 1761, 314 Left, Up
  }

  ;If user presses "f3" click the "farm" button
  if GetKeyState("F3","P")
  {
    Click, 1761, 378 Left, Down
    Click, 1761, 378 Left, Up
  }

  ;If user presses "f4" click the "factory" button
  if GetKeyState("F4","P")
  {
    Click, 1761, 442 Left, Down
    Click, 1761, 442 Left, Up
  }

  ;If user presses "f5" click the "mine" button
  if GetKeyState("F5","P")
  {
    Click, 1761, 502 Left, Down
    Click, 1761, 502 Left, Up
  }

  ;If user presses "f6" click the "shipment" button
  if GetKeyState("F6","P")
  {
    Click, 1761, 566 Left, Down
    Click, 1761, 566 Left, Up
  }

  ;If user presses "f7" click the "alchemy lab" button
  if GetKeyState("F7","P")
  {
    Click, 1761, 638 Left, Down
    Click, 1761, 638 Left, Up
  }

  ;If user presses "f8" click the "black hole" button
  if GetKeyState("F8","P")
  {
    Click, 1761, 699 Left, Down
    Click, 1761, 699 Left, Up
  }

  ;If user presses "f9" click the "time machine" button
  if GetKeyState("F9","P")
  {
    Click, 1761, 763 Left, Down
    Click, 1761, 763 Left, Up
  }

  ;If user presses "f10" click the "buy upgrade" button
  if GetKeyState("F10","P")
  {
    Click, 1631, 193 Left, Down
    Click, 1631, 193 Left, Up
  }

  Click, 342, 528 Left, Down
  Click, 342, 528 Left, Up
}
return
