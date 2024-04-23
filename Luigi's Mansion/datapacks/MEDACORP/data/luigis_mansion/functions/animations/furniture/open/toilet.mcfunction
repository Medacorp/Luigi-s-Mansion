scoreboard players add @s ActionTime 1
execute store result score #temp Time run data get entity @s ArmorItems[3].components."minecraft:custom_model_data"
execute if entity @s[scores={ActionTime=1}] store result entity @s ArmorItems[3].components."minecraft:custom_model_data" int 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={ActionTime=3}] store result entity @s ArmorItems[3].components."minecraft:custom_model_data" int 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={ActionTime=5}] store result entity @s ArmorItems[3].components."minecraft:custom_model_data" int 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={ActionTime=7}] store result entity @s ArmorItems[3].components."minecraft:custom_model_data" int 1 run scoreboard players add #temp Time 1
execute if entity @s[scores={ActionTime=9}] store result entity @s ArmorItems[3].components."minecraft:custom_model_data" int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time
scoreboard players set @s[scores={ActionTime=10}] ActionTime -1