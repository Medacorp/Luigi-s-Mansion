execute unless score #conservatory_closet Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:25,tags:["drop_loot"]}
execute unless score #conservatory_closet Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["conservatory_large_cabinet_mounted_potted_fern"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"conservatory_large_cabinet_mounted_potted_fern",contents:{luigis_mansion:{gold_coin:15,bill:15}}}
execute unless score #conservatory_closet Searched matches 1 as @a if score #conservatory_closet SearcherID = @s ID run tag @s add searcher
execute unless score #conservatory_closet Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/health_dependent_1
execute unless score #conservatory_closet Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 654 12 -26.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 655 12 -26.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #conservatory_closet Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=654.5,y=12,z=-25.5,distance=..0.7,tag=ghost,tag=hidden] add spawn