execute unless score #graveyard_gravestone_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","big_heart"],Duration:1}
execute unless score #graveyard_gravestone_1 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=big_heart] run data modify storage luigis_mansion:data entity set value {room:29}
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=big_heart] positioned 655.0 104.5 53.0 run function luigis_mansion:spawn_entities/item/room_search/big_heart
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 655.0 103 53.0 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #graveyard_gravestone_1 Searched 1