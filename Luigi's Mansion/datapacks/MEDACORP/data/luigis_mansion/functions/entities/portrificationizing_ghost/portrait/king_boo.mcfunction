execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.king_boo.rank
execute store result score #temp Time run data get storage luigis_mansion:data current_state.portrait_ghost_ranks.king_boo
execute if score #temp ActionTime matches -1..0 run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 32
execute if score #temp ActionTime matches 1 run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 33
execute if score #temp ActionTime matches 2 run data modify entity @s ArmorItems[3].components."minecraft:custom_model_data" set value 34
execute if score #temp ActionTime matches -1..0 unless score #temp Time matches 1.. run data modify storage luigis_mansion:data current_state.portrait_ghost_ranks.king_boo set value 0b
execute if score #temp ActionTime matches 1 unless score #temp Time matches 2.. run data modify storage luigis_mansion:data current_state.portrait_ghost_ranks.king_boo set value 1b
execute if score #temp ActionTime matches 2 unless score #temp Time matches 3.. run data modify storage luigis_mansion:data current_state.portrait_ghost_ranks.king_boo set value 2b
scoreboard players reset #temp ActionTime
scoreboard players reset #temp Time
data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.king_boo.portrificationized set value 1b