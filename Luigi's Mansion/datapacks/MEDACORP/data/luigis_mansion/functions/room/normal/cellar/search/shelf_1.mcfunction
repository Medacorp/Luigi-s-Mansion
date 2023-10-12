execute unless score #cellar_shelf_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","big_heart"],Duration:1}
execute unless score #cellar_shelf_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","big_heart"],Duration:1}
execute unless score #cellar_shelf_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","big_heart"],Duration:1}
execute unless score #cellar_shelf_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","big_heart"],Duration:1}
execute unless score #cellar_shelf_content_old_junk_1 Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
execute unless score #cellar_shelf_1 Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=big_heart] positioned 741 3 -52 run function luigis_mansion:spawn_entities/item/room_search/big_heart
tag @e[tag=this_entity,limit=1] remove this_entity
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] positioned 741 3 -52 run function luigis_mansion:room/normal/cellar/shelf_1
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 742 3 -52 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #cellar_shelf_1 Searched 1
tag @e[x=742.5,y=2,z=-51.5,distance=..0.7,tag=ghost,tag=hidden] add spawn