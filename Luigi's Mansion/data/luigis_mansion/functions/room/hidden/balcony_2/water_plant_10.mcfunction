execute unless score #balcony_2_plant_10 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #balcony_2_plant_10 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 655 121 31 run function luigis_mansion:room/hidden/balcony_2/plant_10
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 655 120 31 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #balcony_2_plant_10 Searched 1
