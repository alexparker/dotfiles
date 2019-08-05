hs.window.animationDuration = 0 -- disable animations

-- Padded 5%
hs.hotkey.bind({"shift", "alt"}, "E", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  local pad = max.w * .02

  f.x = max.x + pad
  f.y = max.y + pad
  f.w = max.w - pad * 2
  f.h = max.h - pad * 2
  win:setFrame(f)
end)

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

-- TOP/LEFT 25%
hs.hotkey.bind({"shift", "alt"}, "A", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h / 2
  win:setFrame(f)
end)

-- TOP/RIGHT 25%
hs.hotkey.bind({"shift", "alt"}, "S", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h / 2
  win:setFrame(f)
end)

-- Bottom/LEFT 25%
hs.hotkey.bind({"shift", "alt"}, "Z", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + (max.h / 2)
  f.w = max.w / 2
  f.h = max.h / 2
  win:setFrame(f)
end)

-- BOTTOM/RIGHT 25%
hs.hotkey.bind({"shift", "alt"}, "X", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y + (max.h / 2)
  f.w = max.w / 2
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
hs.hotkey.bind({"shift", "alt"}, 'L', function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen():frame()
	local isDockedLeft = f.x == screen.x
	local newX = f.x + (f.w / 2)
	local newW = f.w / 2
	if isDockedLeft then
		newX = screen.x
		newW = (screen.w - f.w)/2 + f.w
	end
	f.x = newX
	f.w = newW
	win:setFrame(f)
end)

hs.hotkey.bind({"shift", "alt"}, 'H', function()
	local win = hs.window.focusedWindow()
	local f = win:frame()
	local screen = win:screen():frame()
	local isDockedRight = f.x+f.w == screen.x+screen.w
	local newX = screen.x
	local newW = f.w / 2
	if isDockedRight then
		newX = f.x - (screen.x - f.x) / 2
		newW = screen.w - newX
	end
	f.w = newW
	f.x = newX
	win:setFrame(f)
end)

hs.hotkey.bind({"shift", "alt"}, 'J', function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen():frame()
  local newY = f.y + (f.y / 2)
  local newH = f.h / 2
  if f.y == screen.y then
    newY = screen.y
    newH = (screen.h - f.h)/2 + f.h
  end
  if f.h == screen.h then
    newY = f.y + f.h / 2
    newH = f.h / 2
  end
  f.y = newY
  f.h = newH
  win:setFrame(f)
end)

hs.hotkey.bind({"shift", "alt"}, 'H', function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen():frame()
  local isDockedRight = f.x+f.w == screen.x+screen.w
  local newX = screen.x
  local newW = f.w / 2
  if isDockedRight then
    newX = (screen.x - f.x) / 2 + f.x
    newW = screen.w - newX
  end
  f.w = newW
  f.x = newX
  win:setFrame(f)
end)
