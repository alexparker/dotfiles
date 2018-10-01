hs.window.animationDuration = 0 -- disable animations

-- Height: 100%, Width: 50%, LEFT
hs.hotkey.bind({"shift", "alt"}, "F", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

-- Height: 100%, Width: 50%, RIGHT
hs.hotkey.bind({"shift", "alt"}, "R", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

-- Height: 50%, Width: 100%, BOTTOM
hs.hotkey.bind({"shift", "alt"}, "J", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + (max.h / 2)
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end)

-- Height: 50%, Width: 100%, TOP
hs.hotkey.bind({"shift", "alt"}, "K", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)
end)

-- 100% X 100%
hs.hotkey.bind({"shift", "alt"}, "V", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)

k = hs.hotkey.modal.new({"shift", "alt"}, 'O') 
k:bind('', 'escape', function() k:exit() end)
k:bind('', 'H', function() 
	local win = hs.window.focusedWindow()
	win:moveOneScreenWest()
	k:exit()
end)
k:bind('', 'L', function() 
	local win = hs.window.focusedWindow()
	win:moveOneScreenEast()
	k:exit()
end)