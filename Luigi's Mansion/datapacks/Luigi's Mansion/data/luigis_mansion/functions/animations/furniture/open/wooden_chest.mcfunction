scoreboard players add @s ActionTime 1
execute store result score #temp Time run data get entity @s ArmorItems[3].tag.CustomModelData
execute if entity @s[scores={ActionTime=9}] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={ActionTime=16}] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={ActionTime=23}] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={ActionTime=30}] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={ActionTime=30}] ActionTime -1