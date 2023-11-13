scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] Pose set from entity @s ArmorItems[3].tag.default_orientation
execute store result score #temp Time run data get entity @s Pose.Head[2]
execute if entity @s[scores={ActionTime=2..3}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={ActionTime=4..7}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={ActionTime=8..11}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={ActionTime=12..15}] store result entity @s Pose.Head[2] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={ActionTime=16..17}] store result entity @s Pose.Head[2] float 1 run scoreboard players remove #temp Time 4
scoreboard players reset #temp Time
execute if entity @s[scores={ActionTime=2}] run playsound luigis_mansion:furniture.ambient.projector block @a[tag=same_room] ~ ~1.4 ~
execute if entity @s[scores={ActionTime=6}] run playsound luigis_mansion:furniture.ambient.projector block @a[tag=same_room] ~ ~1.4 ~
execute if entity @s[scores={ActionTime=10}] run playsound luigis_mansion:furniture.ambient.projector block @a[tag=same_room] ~ ~1.4 ~
execute if entity @s[scores={ActionTime=14}] run playsound luigis_mansion:furniture.ambient.projector block @a[tag=same_room] ~ ~1.4 ~
data modify entity @s[scores={ActionTime=2}] ArmorItems[3].tag.CustomModelData set value 115
scoreboard players set @s[scores={ActionTime=17}] ActionTime 1

function #luigis_mansion:room/dark_room
scoreboard players set @s[tag=!dark_room] ActionTime 0
data modify entity @s[tag=!dark_room] Pose set from entity @s ArmorItems[3].tag.default_orientation
tag @s[tag=!dark_room] remove lit
data modify entity @s[tag=!dark_room] ArmorItems[3].tag.CustomModelData set value 114
tag @s[tag=!dark_room] remove open
tag @s remove dark_room
