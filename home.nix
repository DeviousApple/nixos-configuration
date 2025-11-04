{config, pkgs, ... }: 


{
 home.username = "lapbrew";
 home.homeDirectory = "/home/lapbrew";
 programs.git.enable = true;
 home.stateVersion = "25.05";
 programs.bash = {
    enable = true;
    shellAliases = {
        yo = "yolo mayne";
    };
 };
 wayland.windowManager.sway = {
     enable=true;
     wrapperFeatures.gtk = true;
     config = rec {
	terminal = "kitty";
	startup = [
 	   {command = "firefox";}
	];	
     };
 };
}
