execute unless score #foyer_chandelier Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #foyer_chandelier Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/normal/foyer/chandelier
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 751.0 21 9.0 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #foyer_chandelier Searched 1