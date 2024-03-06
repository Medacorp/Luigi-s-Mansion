scoreboard players reset @s[tag=unlock_door] AnimationProgress
execute if entity @s[tag=unlock_door] positioned ^ ^ ^0.5 align xz positioned ~0.5 ~ ~0.5 as @a[distance=..0.5,tag=!spectator] run function luigis_mansion:entities/player/animation/set/scare/normal
tag @s remove unlock_door
tag @s remove locked_door
scoreboard players add @s AnimationProgress 1
fill ^ ^ ^-0.5 ^ ^1 ^-0.5 minecraft:air replace minecraft:light_gray_stained_glass
data modify entity @s[tag=push,tag=!forced_animation] ArmorItems[3].tag.luigis_mansion.animation set value {namespace:"luigis_mansion",id:"open/push"}
data modify entity @s[tag=!push,tag=forced_animation] ArmorItems[3].tag.luigis_mansion.animation set value {namespace:"luigis_mansion",id:"open/push"}
data modify entity @s[tag=!push,tag=!forced_animation] ArmorItems[3].tag.luigis_mansion.animation set value {namespace:"luigis_mansion",id:"open/pull"}
data modify entity @s[tag=push,tag=forced_animation] ArmorItems[3].tag.luigis_mansion.animation set value {namespace:"luigis_mansion",id:"open/pull"}

execute if entity @s[scores={AnimationProgress=1},tag=!forced_animation] run function luigis_mansion:entities/furniture/type/door/force_other_end with entity @s ArmorItems[3].tag.luigis_mansion.other_end
execute if entity @s[scores={AnimationProgress=1},tag=!forced_animation] if data entity @s ArmorItems[3].tag.other_end.dimension run function luigis_mansion:entities/furniture/type/door/force_other_end_dimension with entity @s ArmorItems[3].tag.luigis_mansion.other_end
execute if entity @s[scores={AnimationProgress=10}] run playsound luigis_mansion:furniture.door.open block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=30},tag=push,tag=!forced_animation] run playsound luigis_mansion:furniture.door.close block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=30},tag=!push,tag=forced_animation] run playsound luigis_mansion:furniture.door.close block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=35},tag=!push,tag=!forced_animation] run playsound luigis_mansion:furniture.door.close block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=35},tag=push,tag=forced_animation] run playsound luigis_mansion:furniture.door.close block @a[tag=same_room] ~ ~ ~ 1

data remove entity @s[scores={AnimationProgress=50..}] ArmorItems[3].tag.luigis_mansion.animation
tag @s[scores={AnimationProgress=50..}] remove open_door
tag @s[scores={AnimationProgress=50..}] remove forced_animation
scoreboard players reset @s[scores={AnimationProgress=50..}] AnimationProgress
execute store result entity @s[tag=forced_animation] ArmorItems[3].tag.luigis_mansion.initial_animation_progress int 1 run scoreboard players get @s AnimationProgress