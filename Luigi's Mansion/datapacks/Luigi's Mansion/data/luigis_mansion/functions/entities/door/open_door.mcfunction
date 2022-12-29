scoreboard players reset @s[tag=unlock_door] AnimationProg
execute if entity @s[tag=unlock_door] positioned ^ ^ ^0.5 align xz positioned ~0.5 ~ ~0.5 as @a[distance=..0.5] unless entity @a[tag=!push_unlock_door,tag=!pull_unlock_door] run function luigis_mansion:entities/player/animation/set/none
tag @s remove unlock_door
scoreboard players add @s AnimationProg 1
fill ^ ^ ^-0.5 ^ ^1 ^-0.5 minecraft:air replace minecraft:light_gray_stained_glass
execute if entity @s[scores={AnimationProg=1},tag=!forced_animation] run function #luigis_mansion:entities/door/force_other_animation
execute if entity @s[scores={AnimationProg=10}] run playsound luigis_mansion:furniture.door.open block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=30},tag=!pull,tag=!forced_animation] run playsound luigis_mansion:furniture.door.close block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=30},tag=pull,tag=forced_animation] run playsound luigis_mansion:furniture.door.close block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=35},tag=pull,tag=!forced_animation] run playsound luigis_mansion:furniture.door.close block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=35},tag=!pull,tag=forced_animation] run playsound luigis_mansion:furniture.door.close block @a[tag=same_room] ~ ~ ~ 1

scoreboard players operation @e[tag=this_model,limit=1] AnimationProg = @s AnimationProg
execute if entity @s[tag=forced_animation] run tag @e[tag=this_model,limit=1] add forced_animation
execute if entity @s[tag=!pull,tag=!forced_animation] as @e[tag=this_model,limit=1] run function luigis_mansion:animations/door/open/push
execute if entity @s[tag=pull,tag=forced_animation] as @e[tag=this_model,limit=1] run function luigis_mansion:animations/door/open/push
execute if entity @s[tag=pull,tag=!forced_animation] as @e[tag=this_model,limit=1] run function luigis_mansion:animations/door/open/pull
execute if entity @s[tag=!pull,tag=forced_animation] as @e[tag=this_model,limit=1] run function luigis_mansion:animations/door/open/pull

tag @s[scores={AnimationProg=50..}] remove open_door
tag @s[scores={AnimationProg=50..}] remove forced_animation
execute if entity @s[scores={AnimationProg=50..}] run tag @e[tag=this_model,limit=1] remove forced_animation
execute if entity @s[scores={AnimationProg=50..}] run scoreboard players reset @e[tag=this_model,limit=1] AnimationProg
scoreboard players reset @s[scores={AnimationProg=50..}] AnimationProg