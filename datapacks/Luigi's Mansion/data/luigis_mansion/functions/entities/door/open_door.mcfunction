scoreboard players add @s AnimationProg 1
fill ^ ^ ^-0.5 ^ ^1 ^-0.5 minecraft:air replace minecraft:light_gray_stained_glass
execute if entity @s[scores={AnimationProg=10},tag=!pull,tag=!forced_animation] run playsound luigis_mansion:block.door.open block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=30},tag=!pull,tag=!forced_animation] run playsound luigis_mansion:block.door.close block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=10},tag=pull,tag=!forced_animation] run playsound luigis_mansion:block.door.open block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=35},tag=pull,tag=!forced_animation] run playsound luigis_mansion:block.door.close block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=10},tag=pull,tag=forced_animation] run playsound luigis_mansion:block.door.open block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=30},tag=pull,tag=forced_animation] run playsound luigis_mansion:block.door.close block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=10},tag=!pull,tag=forced_animation] run playsound luigis_mansion:block.door.open block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=35},tag=!pull,tag=forced_animation] run playsound luigis_mansion:block.door.close block @a[tag=same_room] ~ ~ ~ 1

scoreboard players operation @e[tag=this_model,limit=1] AnimationProg = @s AnimationProg
execute if entity @s[tag=forced_animation] run tag @e[tag=this_model,limit=1] add forced_animation
execute if entity @s[tag=!forced_animation] run tag @e[tag=this_model,limit=1] remove forced_animation
execute if entity @s[tag=!pull,tag=!forced_animation] as @e[tag=this_model,limit=1] run function luigis_mansion:animations/door/open/push
execute if entity @s[tag=pull,tag=!forced_animation] as @e[tag=this_model,limit=1] run function luigis_mansion:animations/door/open/pull
execute if entity @s[tag=pull,tag=forced_animation] as @e[tag=this_model,limit=1] run function luigis_mansion:animations/door/open/push
execute if entity @s[tag=!pull,tag=forced_animation] as @e[tag=this_model,limit=1] run function luigis_mansion:animations/door/open/pull

tag @s[scores={AnimationProg=50}] remove open_door
tag @s[scores={AnimationProg=50}] remove forced_animation
scoreboard players reset @s[scores={AnimationProg=50}] AnimationProg