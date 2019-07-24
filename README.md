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

| start address |          length | utility            |
|---------------+-----------------+--------------------|
| 0 =0x0000=    |               4 | magic number       |
| 4 =0x0004=    |             128 | champion's name    |
| 132 =0x0084=  |               4 | /unused/           |
| 136 =0x0088=  |               4 | champion' size     |
| 140 =0x008C=  |            2048 | champion's comment |
| 2188 =0x088C= |               4 | /unused/           |
| 2192 =0x0890= | champion's size | champion's code    |
