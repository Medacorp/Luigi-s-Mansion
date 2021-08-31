scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1},tag=next_wave] run function luigis_mansion:room/normal/twins_room/add_blockade
execute if entity @s[scores={Dialog=59}] run tag @e[tag=orville,limit=1] add to_remove

execute if entity @s[scores={Dialog=120},tag=next_wave] at @e[tag=orville,limit=1] positioned ~ ~-2 ~ run function luigis_mansion:spawn_entities/portrait_ghost/orville
execute if entity @s[scores={Dialog=120},tag=next_wave] positioned ~ ~-2 ~ run function luigis_mansion:spawn_entities/portrait_ghost/henry

execute if entity @s[scores={Dialog=120},tag=next_wave] run function luigis_mansion:room/normal/twins_room/wave_6

tag @s[scores={Dialog=60}] add vanish
execute if entity @s[scores={Dialog=60}] run tag @e[tag=orville,tag=to_remove,limit=1] add vanish
tag @s[scores={Dialog=120}] add remove_from_existence
execute if entity @s[scores={Dialog=120}] run tag @e[tag=orville,tag=to_remove,limit=1] add remove_from_existence