execute unless score #secret_altar_candle_4 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #secret_altar_candle_4 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] run function luigis_mansion:room/hidden/secret_altar/candle_4
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 646 93 39 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #secret_altar_candle_4 Searched 1