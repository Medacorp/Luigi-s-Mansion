execute unless score #ceramics_studio_lamp Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:65,tags:["drop_loot"]}
execute unless score #ceramics_studio_lamp Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["ceramics_studio_long_hook_suspended_encased_lamp"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"ceramics_studio_long_hook_suspended_encased_lamp",contents:{luigis_mansion:{bill:5}}}
execute unless score #ceramics_studio_lamp Searched matches 1 as @a if score #ceramics_studio_lamp SearcherID = @s ID run tag @s add searcher
execute unless score #ceramics_studio_lamp Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/health_dependent_1
execute unless score #ceramics_studio_lamp Searched matches 1 run tag @a remove searcher
execute unless data storage luigis_mansion:data furniture.loot positioned 705 34 66 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 705 33 66 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #ceramics_studio_lamp Searched 1
data remove storage luigis_mansion:data furniture