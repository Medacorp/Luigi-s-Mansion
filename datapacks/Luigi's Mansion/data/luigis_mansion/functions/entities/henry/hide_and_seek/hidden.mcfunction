scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1},tag=next_wave] run function luigis_mansion:room/hidden/twins_room/add_blockade
tag @s[scores={Dialog=60}] add remove_hide_and_seek
execute if entity @s[scores={Dialog=60}] run tag @e[tag=orville,limit=1] add remove_hide_and_seek

execute if entity @s[scores={Dialog=60},tag=next_wave] at @e[tag=orville,limit=1] run function luigis_mansion:spawn_entities/portrait_ghost/orville
execute if entity @s[scores={Dialog=60},tag=next_wave] run function luigis_mansion:spawn_entities/portrait_ghost/henry

execute if entity @s[scores={Dialog=60},tag=next_wave] run function luigis_mansion:room/hidden/twins_room/wave_6

teleport @s[scores={Dialog=60}] ~ -100 ~
execute if entity @s[scores={Dialog=60},tag=remove_hide_and_seek] run teleport @e[tag=orville,limit=1] ~ -100 ~