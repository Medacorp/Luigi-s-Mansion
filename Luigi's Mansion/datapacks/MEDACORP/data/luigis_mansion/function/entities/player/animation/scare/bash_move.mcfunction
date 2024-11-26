execute rotated ~ 0 run teleport @s ^ ^ ^-0.1
execute at @s rotated ~ 0 unless block ^ ^0.2 ^-0.5 #luigis_mansion:players_ignore run function luigis_mansion:entities/player/animation/scare/bash_turn
execute at @s[scores={Shrunk=0}] rotated ~ 0 unless block ^ ^1 ^-0.5 #luigis_mansion:players_ignore run function luigis_mansion:entities/player/animation/scare/bash_turn
scoreboard players remove @s TeleportDelay 1
execute at @s[scores={TeleportDelay=0..}] run function luigis_mansion:entities/player/animation/scare/bash_move