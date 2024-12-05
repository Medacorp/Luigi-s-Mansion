execute unless score #parlor_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:3,tags:["drop_loot"]}
execute unless score #parlor_lamp Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["parlor_chained_chandelier"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"parlor_chained_chandelier",contents:{luigis_mansion:{gold_bar:1}}}
execute unless score #parlor_lamp Searched matches 1 as @e[tag=luigi] if score #parlor_lamp SearcherID = @s ID run tag @s add searcher
execute unless score #parlor_lamp Searched matches 1 run function luigis_mansion:entities/furniture/loot_chance/health_dependent_3
execute unless score #parlor_lamp Searched matches 1 run tag @e[tag=searcher] remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 721.0 25 -12.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 721.0 24 -12.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #parlor_lamp Searched 1
data remove storage luigis_mansion:data furniture