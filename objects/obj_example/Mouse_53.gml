if (os_type == os_windows) {
	if (!global.pid) {
		global.pid = ProcessExecuteAsync("\"" + working_directory + "game\\game.exe\"");
	}
} else if (os_type == os_linux) {
	if (!file_exists(game_save_id + "game.AppImage")) {
		file_copy(working_directory + "game/game.AppImage", game_save_id + "game.AppImage");
		var tmp = ProcessExecute("chmod u+x \"" + game_save_id + "game.AppImage\"");
		FreeExecutedProcessStandardInput(tmp);
		FreeExecutedProcessStandardOutput(tmp);
	}
	if (!global.pid) {
		global.pid = ProcessExecuteAsync("\"" + game_save_id + "game.AppImage\"");
	}
}