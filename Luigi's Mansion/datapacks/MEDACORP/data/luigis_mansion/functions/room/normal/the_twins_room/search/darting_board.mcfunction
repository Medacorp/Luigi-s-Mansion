execute unless score #the_twins_room_darting_board Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #the_twins_room_darting_board Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #the_twins_room_darting_board Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #the_twins_room_darting_board Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
execute unless score #the_twins_room_darting_board Searched matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
execute unless score #the_twins_room_darting_board Searched matches 1 run tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=small_heart] run data modify storage luigis_mansion:data entity set value {room:49}
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=small_heart] positioned 738 22 42.0 run function luigis_mansion:spawn_entities/item/room_search/small_heart
execute unless entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=!nothing] positioned 738 22 42.0 run function luigis_mansion:blocks/dust
kill @e[type=minecraft:marker,tag=chance]
scoreboard players set #the_twins_room_darting_board Searched 1
tag @e[x=738.5,y=22,z=42.5,distance=..0.7,tag=ghost,tag=hidden] add spawn