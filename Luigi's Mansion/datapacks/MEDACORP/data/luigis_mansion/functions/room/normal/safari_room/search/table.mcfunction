execute unless score #safari_room_table Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","big_heart"],Duration:1}
execute unless score #safari_room_table Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=big_heart] positioned 743 30 -55 run function luigis_mansion:spawn_entities/item/room_search/big_heart
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 743 30 -56 run function luigis_mansion:blocks/dust
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 747 30 -56 run function luigis_mansion:blocks/dust_no_sound
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #safari_room_table Searched 1
tag @e[x=743.5,y=29,z=-55.5,distance=..0.7,tag=ghost] add spawn