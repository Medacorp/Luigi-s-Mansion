execute unless score #tea_room_drawer_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:34,tags:["drop_loot"]}
execute unless score #tea_room_drawer_2 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["tea_room_giant_cabinet_drawers_2"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"tea_room_giant_cabinet_drawers_2",contents:{luigis_mansion:{red_ruby:1}}}
execute unless score #tea_room_drawer_2 Searched matches 1 as @e[tag=luigi] if score #tea_room_drawer_2 SearcherID = @s ID run tag @s add searcher
execute unless score #tea_room_drawer_2 Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/health_dependent_1
execute unless score #tea_room_drawer_2 Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 643 20 -60 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 643 21 -59 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #tea_room_drawer_2 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=643.5,y=20,z=-59.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
teleport @e[x=643.5,y=20,z=-59.5,distance=..0.7,tag=spawn] 643 20 -59