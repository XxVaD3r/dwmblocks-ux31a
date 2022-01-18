//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*333Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/

    {"  ", "~/.suckless/dwmblocks/Blocks/db-pamixer-vol.sh",                       0,  10}, // Volume

    {" ", "~/.suckless/dwmblocks/Blocks/xbacklight.sh",                            0,  11}, // Brightness

	{"", "~/.suckless/dwmblocks/Blocks/mem-usage.sh",	                            3,	 0}, // Memory Usage

    {"", "~/.suckless/dwmblocks/Blocks/CPU-Temp.sh",                                3,   0}, // CPU Usage

    {"", "~/.suckless/dwmblocks/Blocks/new-bat0.sh",                                8,   0}, // Fancy Battery Status

    {"", "~/.suckless/dwmblocks/Blocks/connection-name.sh",                         8,   0}, // Connection

    {"", "~/.suckless/dwmblocks/Blocks/date.sh",                                    1,	 0}, // Time & Date

};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
