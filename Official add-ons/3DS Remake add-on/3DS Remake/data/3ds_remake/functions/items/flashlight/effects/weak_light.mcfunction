execute if entity @s[tag=!flashlight,tag=had_flashlight_on] run function luigis_mansion:items/flashlight/effects/turn_off
execute if entity @s[tag=flashlight,tag=!had_flashlight_on] run function luigis_mansion:items/flashlight/effects/turn_on
execute if entity @s[tag=dark_room] positioned ~ ~1 ~ positioned ^ ^ ^0.8 if block ~ ~ ~ #luigis_mansion:flashlight_path run summon minecraft:marker ~ ~ ~ {Tags:["weak_flashlight","new"]}
execute if entity @s[tag=dark_room] positioned ~ ~1 ~ run teleport @e[type=minecraft:marker,tag=weak_flashlight,tag=new,limit=1] ~ ~ ~ ~ ~
execute if entity @s[tag=dark_room] run scoreboard players operation @e[type=minecraft:marker,tag=weak_flashlight,tag=new,limit=1] Room = @s Room
execute if entity @s[tag=dark_room] as @e[type=minecraft:marker,tag=weak_flashlight,tag=new,limit=1] store result score @s HomeRotationX run data get entity @s Rotation[0] 100
execute if entity @s[tag=dark_room] as @e[type=minecraft:marker,tag=weak_flashlight,tag=new,limit=1] store result score @s HomeRotationY run data get entity @s Rotation[1] 100
execute if entity @s[tag=dark_room] as @e[type=minecraft:marker,tag=weak_flashlight,tag=new,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute if entity @s[tag=dark_room] as @e[type=minecraft:marker,tag=weak_flashlight,tag=new,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute if entity @s[tag=dark_room] as @e[type=minecraft:marker,tag=weak_flashlight,tag=new,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute if entity @s[tag=dark_room] as @e[type=minecraft:marker,tag=weak_flashlight,tag=new,limit=1] at @s run function 3ds_remake:items/flashlight/effects/weak_light/path
execute if entity @s[tag=dark_room,tag=!flashlight] run scoreboard players set @e[type=minecraft:marker,tag=weak_flashlight,tag=new,limit=1] PathStep 1
execute if entity @s[tag=dark_room] as @e[type=minecraft:marker,tag=weak_flashlight,tag=new,limit=1] at @s if score #temp MirrorX matches -2147483648.. run function 3ds_remake:items/flashlight/effects/weak_light/mirror/x
execute if entity @s[tag=dark_room] as @e[type=minecraft:marker,tag=weak_flashlight,tag=new,limit=1] at @s if score #temp MirrorZ matches -2147483648.. run function 3ds_remake:items/flashlight/effects/weak_light/mirror/z
execute if entity @s[tag=dark_room] run tag @e[type=minecraft:marker,tag=weak_flashlight,tag=new,limit=1] remove new