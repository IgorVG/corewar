# corewar
Corewar is a codding game from 1984
<br><img src="corewar-animation.gif" alt="corewar-animation" width="1195"/>

Current implementation according according to school "42" corewar specifications.</br>

Players are programmed using the assembler style language inspired by the <a href="http://vyznev.net/corewar/guide.html"> original redcode</a>.</br>

Usage:</br>
Create program using set of instruction below. file must start with:</br>
*.name "player_name"*</br>
*.comment "comments to the player"*</br>
*\# comment can be placed anywhere and must be followed by the number sign '#'*</br>
*set of instructions*</br>

Program file must end by .s.  

|__length__| __d i__ |	__u o x X__ | __f__  |	__c__ |	__s__|	__p__|
|:--:|--|--|--|--|--|--|
|(none)	| int	| unsigned int|	double|	int |	char*|	void* |
|hh	| signed char |	unsigned char	|	| | | |
|h	| short int	|unsigned short int	|	| | | |
|l	| long int	| unsigned long int	|	| wint_t	| wchar_t*	| |
|ll |	long long int |	unsigned long long int|	| | | |
|L	| | |		long double| | | |
