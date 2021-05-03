execute unless score #balcony_2_plant_9 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #balcony_2_plant_9 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/normal/balcony_2/plant_9
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 655 120 -13 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #balcony_2_plant_9 Searched 1
