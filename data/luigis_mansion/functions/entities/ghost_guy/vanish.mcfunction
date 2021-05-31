scoreboard players add @s ActionTime 1
teleport @s[scores={ActionTime=1..2}] ~ ~0.4 ~
teleport @s[scores={ActionTime=3..4}] ~ ~-0.4 ~
execute if score #mirrored Selected matches 0 run teleport @s[scores={ActionTime=5..}] ~ ~0.3 ~ ~-8 ~
execute if score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=5..}] ~ ~0.3 ~ ~8 ~
execute at @s[scores={ActionTime=20}] run teleport @s ~ ~-4.3 ~
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.ghost_guy.disappear hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/ghost_guy/vanish
execute store result score #temp Time run data get entity @s ArmorItems[3].tag.CustomModelData
execute if entity @s[scores={ActionTime=20},tag=!dancing,tag=maskless] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={ActionTime=20},tag=dancing,tag=maskless] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add #temp Time 2
scoreboard players reset #temp Time
tag @s[scores={ActionTime=20}] add disappear
