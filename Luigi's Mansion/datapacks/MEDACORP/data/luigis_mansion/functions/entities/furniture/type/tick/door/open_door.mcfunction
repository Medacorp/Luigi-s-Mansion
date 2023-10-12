scoreboard players reset @s[tag=unlock_door] AnimationProgress
execute if entity @s[tag=unlock_door] positioned ^ ^ ^0.5 align xz positioned ~0.5 ~ ~0.5 as @a[distance=..0.5,scores={Animation=17..23}] run function luigis_mansion:entities/player/animation/set/none
tag @s remove unlock_door
tag @s remove locked_door
scoreboard players add @s AnimationProgress 1
fill ^ ^ ^-0.5 ^ ^1 ^-0.5 minecraft:air replace minecraft:light_gray_stained_glass
execute if entity @s[scores={AnimationProgress=1},tag=!forced_animation] run function luigis_mansion:entities/furniture/type/tick/door/force_other_end with entity @s ArmorItems[3].tag.other_end
execute if entity @s[scores={AnimationProgress=1},tag=!forced_animation] if data entity @s ArmorItems[3].tag.other_end.dimension run function luigis_mansion:entities/furniture/type/tick/door/end_dimension with entity @s ArmorItems[3].tag.other_end
execute if entity @s[scores={AnimationProgress=10}] run playsound luigis_mansion:furniture.door.open block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=30},tag=!pull,tag=!forced_animation] run playsound luigis_mansion:furniture.door.close block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=30},tag=pull,tag=forced_animation] run playsound luigis_mansion:furniture.door.close block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=35},tag=pull,tag=!forced_animation] run playsound luigis_mansion:furniture.door.close block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=35},tag=!pull,tag=forced_animation] run playsound luigis_mansion:furniture.door.close block @a[tag=same_room] ~ ~ ~ 1

execute if entity @s[tag=push,tag=!forced_animation] run function luigis_mansion:animations/furniture/door_open/push
execute if entity @s[tag=!push,tag=forced_animation] run function luigis_mansion:animations/furniture/door_open/push
execute if entity @s[tag=!push,tag=!forced_animation] run function luigis_mansion:animations/furniture/door_open/pull
execute if entity @s[tag=push,tag=forced_animation] run function luigis_mansion:animations/furniture/door_open/pull

tag @s[scores={AnimationProgress=50..}] remove open_door
tag @s[scores={AnimationProgress=50..}] remove forced_animation
scoreboard players reset @s[scores={AnimationProgress=50..}] AnimationProgress