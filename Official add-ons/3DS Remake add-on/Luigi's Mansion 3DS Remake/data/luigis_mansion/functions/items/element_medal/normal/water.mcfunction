data modify storage luigis_mansion:data current_state.current_data.obtained_items merge value {water_element_medal:1b}
data modify storage luigis_mansion_3ds_remake:data current_state.trophy.easy.has_element_medals.water set value 1b
execute if data storage luigis_mansion_3ds_remake:data current_state.trophy.easy.has_element_medals{fire:1b,water:1b,ice:1b} run function luigis_mansion_3ds_remake:room/gallery/clear_task/easy/task_3
scoreboard players set @a GBHCall 7
execute as @a run function luigis_mansion:other/music/set/gameboy_horror_calling
function luigis_mansion:items/element_medal/sound