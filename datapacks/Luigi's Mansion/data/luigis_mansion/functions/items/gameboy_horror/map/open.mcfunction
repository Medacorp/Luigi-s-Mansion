execute unless entity @s[scores={Room=0}] store result score @s HomeX run data get entity @s Pos[0] 100
execute unless entity @s[scores={Room=0}] store result score @s HomeY run data get entity @s Pos[1] 100
execute unless entity @s[scores={Room=0}] store result score @s HomeZ run data get entity @s Pos[2] 100
execute unless entity @s[scores={Room=0}] store result score @s HomeRotX run data get entity @s Rotation[0] 1
execute unless entity @s[scores={Room=0}] store result score @s HomeRotY run data get entity @s Rotation[1] 1
execute unless entity @s[scores={Room=0}] run tag @s add opening_map
execute unless entity @s[scores={Room=0}] rotated as @s run function luigis_mansion:spawn_entities/gameboy_horror_location
execute unless entity @a[tag=looking_at_map,limit=1] unless entity @s[scores={Room=0}] rotated as @s run function luigis_mansion:spawn_entities/gameboy_horror_marker
execute unless entity @a[tag=looking_at_map,limit=1] unless entity @s[scores={Room=0}] rotated as @s as @e[distance=..1,tag=gameboy_horror_marker,limit=1] positioned as @s run function luigis_mansion:entities/gameboy_horror_marker/tick
execute unless entity @s[scores={Room=0}] run function #luigis_mansion:items/gameboy_horror/map/warp
execute unless entity @s[scores={Room=0}] run tag @s[tag=!cancel] add looking_at_map
execute unless entity @s[scores={Room=0}] if entity @s[tag=!cancel] run playsound luigis_mansion:item.gameboy_horror.map.open player @a[tag=same_room] ~ ~ ~ 1
execute unless entity @s[scores={Room=0}] at @s[tag=!cancel] run playsound luigis_mansion:item.gameboy_horror.map.open player @s ~ ~ ~ 1
tag @s remove opening_map
tag @s remove cancel
scoreboard players reset @s OpenMapTime
scoreboard players set @s GBHChoice 0