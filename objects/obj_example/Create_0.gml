global.pid = 0;
// see first room creation code of game.yyz project for how to make the game stay on 
// top of launcher. game.yyz is in included files / data files in this project file.
EnvironmentSetVariable("OWNER_WINDOW_ID", string(int64(window_handle())));