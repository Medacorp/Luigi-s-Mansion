scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run data modify entity @s ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:78}}
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.jarvis.freeze hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/jarvis/got_frozen
teleport @s[scores={ActionTime=10}] ~ ~-1 ~
execute if entity @s[scores={ActionTime=10}] run particle minecraft:block minecraft:ice ~ ~1.2 ~ 0.3 0.3 0.3 0 10
execute if entity @s[scores={ActionTime=10}] run function luigis_mansion:entities/jarvis/turn_invisible
tag @s[scores={ActionTime=10}] remove got_frozen
scoreboard players set @s[scores={ActionTime=10}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=10}] ActionTime 0