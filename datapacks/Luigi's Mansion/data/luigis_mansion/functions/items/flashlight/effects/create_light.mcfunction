execute if entity @s[tag=!flashlight,tag=had_flashlight_on] run function luigis_mansion:items/flashlight/effects/turn_off
execute if entity @s[tag=flashlight,tag=!had_flashlight_on] run function luigis_mansion:items/flashlight/effects/turn_on
execute if entity @s[tag=flashlight] positioned ~ ~1 ~ positioned ^ ^ ^0.8 if block ~ ~ ~ #luigis_mansion:flashlight_path run summon minecraft:marker ~ ~ ~ {Tags:["flashlight","new"]}
execute if entity @s[tag=flashlight] positioned ~ ~1 ~ run teleport @e[type=minecraft:marker,tag=flashlight,tag=new,limit=1] ~ ~ ~ ~ ~
execute if entity @s[tag=flashlight] run scoreboard players operation @e[type=minecraft:marker,tag=flashlight,tag=new,limit=1] Room = @s Room
execute if entity @s[tag=flashlight] as @e[type=minecraft:marker,tag=flashlight,tag=new,limit=1] store result score @s HomeRotX run data get entity @s Rotation[0] 100
execute if entity @s[tag=flashlight] as @e[type=minecraft:marker,tag=flashlight,tag=new,limit=1] store result score @s HomeRotY run data get entity @s Rotation[1] 100
execute if entity @s[tag=flashlight] as @e[type=minecraft:marker,tag=flashlight,tag=new,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute if entity @s[tag=flashlight] as @e[type=minecraft:marker,tag=flashlight,tag=new,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute if entity @s[tag=flashlight] as @e[type=minecraft:marker,tag=flashlight,tag=new,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute if entity @s[tag=flashlight] as @e[type=minecraft:marker,tag=flashlight,tag=new,limit=1] at @s run function luigis_mansion:items/flashlight/effects/create_light/path
execute if entity @s[tag=flashlight] run tag @e[type=minecraft:marker,tag=flashlight,tag=new,limit=1] remove new