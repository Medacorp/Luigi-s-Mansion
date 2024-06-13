execute if score #kitchen_oven Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute if score #kitchen_oven Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if score #kitchen_oven Searched matches 1.. if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 701 11 75.0 run function luigis_mansion:room/normal/kitchen/oven
execute if score #kitchen_oven Searched matches 1.. unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 701 11 75.0 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
execute if score #kitchen_oven Searched matches 1 run scoreboard players set #kitchen_oven Searched 2