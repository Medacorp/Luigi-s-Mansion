execute unless score #balcony_2_plant_5 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #balcony_2_plant_5 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/normal/balcony_2/plant_5
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 681 120 36 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #balcony_2_plant_5 Searched 1