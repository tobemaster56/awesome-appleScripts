-- 这里系统环境是中文环境，所以菜单项都是中文，如果是英文的话，请将下面三项变量的设置更改为对应的英文
set memuName to "商店"
set loginMenuItem to "登录"
set logoutMenuItem to "退出登录"

-- 这里写的是测试用的账号和密码，需要更改为自己的账号和密码

set account to "test1234567@apple.com"
set pwd to "test123456"

tell application "App Store" to activate
tell application "System Events"
	tell process "App Store"
		set frontmost to true
		try
			click menu item loginMenuItem of menu memuName of menu bar 1
		on error
			click menu item logoutMenuItem of menu memuName of menu bar 1
			delay 2
			click menu item loginMenuItem of menu memuName of menu bar 1
		end try
		delay 2
		set value of text field 2 of sheet 1 of window "App Store" to account
		set value of text field 1 of sheet 1 of window "App Store" to pwd
		keystroke return
	end tell
end tell