scoreboard players add @s Dialog 1
scoreboard players set @s[scores={Dialog=1}] ActionTime 0
execute if entity @s[scores={Dialog=1}] run scoreboard players set @e[tag=this_body,tag=!decapitate,limit=1] Dialog 0
execute if entity @s[scores={Dialog=1}] run tag @e[tag=this_body,tag=!decapitate,limit=1] add decapitate
data modify entity @s[scores={Dialog=1}] data.animation set value {namespace:"luigis_mansion",id:"decapitate"}
teleport @s[scores={Dialog=2..21},tag=decapitate_move_up] ^ ^0.1 ^-0.8
teleport @s[scores={Dialog=2..21},tag=!decapitate_move_up] ^ ^ ^-0.8
tag @s[scores={Dialog=40}] remove decapitate_move_up
tag @s[scores={Dialog=70}] remove decapitate
data remove entity @s[scores={Dialog=70}] data.animation
scoreboard players set @s[scores={Dialog=70}] Dialog 0