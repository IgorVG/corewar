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

Program file must end by .s.</br>


### assembly language instructions

| instructions | op codes | arguments                | purpose  | cycles | modify carry | pre-load opcode |
