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
 
 programs.waybar = {
    enable = true;
    settings = {
       mainBar = {
	 layer = "top";
	 height = 28;
	 position = "top";
	 modules-left = [ "sway/workspaces" "sway/mode" ];
	 modules-center = [ "clock" ];
	 modules-right = [ "battery" "network" "pulseaudio" ];

	 "clock" = {
	    interval = 60;
	    format = "{:%H:%M}";
	    tooltip-format = "{:%A, %d %B %Y}";
	 };
	 
	 "battery" = {
	    format = "{capacity}%";
	    format-charging = "{capacity}%";
	    format-plugged = "{capacity}%";
	    tooltip = false;
	 };	
	 
	 "network" = {
	    format-wifi = "{essid}";
	    format-ethernet = "{ipaddr}";
	    format-disconnected = "X"; 
	 };
       };
     };

     style = ''
       * {
	 font-family: "Fira Code", monospace;
	 font-size: 12px;
       }
	
       #clock {
      	 color: #88c0d0;
	 padding: 0 10px;
       } 
	
       #battery {
    	 color: #a3be8c;
       }
       
       #network {
       	 color: #ebcb8b;
       }
     '';
 }; 
 
 wayland.windowManager.sway = {
     enable=true;
     wrapperFeatures.gtk = true;
     config = rec {
	terminal = "alacritty";
	startup = [
 	   {command = "alacritty";}
	];	
     };
 };
}
