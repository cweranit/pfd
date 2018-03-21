local text = io.stdin:read()
url = 0
play = 0
fm.setScreenText("Computer radio")
fm.setScreenColor(0xFF0000)
if text == seturl then
	fm.setURL("http://dl2.mp3party.net/download/2005805")
	url = 1
elseif text == play and url == 1 then
	fm.start()
	play = 1
elseif text == stop and play == 1 then
	fm.stop()
	play = 0
elseif text == volu then
	fm.volUp()
elseif text == vold then
	fm.volDown()
elseif text == radio_help then
	print("seturl - Установить народную песню")
	print("play - Старт")
	print("stop - Стоп")
	print("volu/vold - Прибавить/Убавить")
end