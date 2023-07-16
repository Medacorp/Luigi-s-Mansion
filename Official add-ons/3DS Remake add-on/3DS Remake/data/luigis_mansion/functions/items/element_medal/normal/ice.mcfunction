data modify storage luigis_mansion:data current_state.current_data.obtained_items merge value {ice_element_medal:1b}
data modify storage 3ds_remake:data current_state.trophy.easy.has_element_medals.ice set value 1b
execute if data storage 3ds_remake:data current_state.trophy.easy.has_element_medals{fire:1b,water:1b,ice:1b} run function 3ds_remake:room/gallery/clear_task/easy/task_3
scoreboard players set @a GBHCall 9
execute as @a run function luigis_mansion:other/music/set/game_boy_horror_calling
function luigis_mansion:items/element_medal/sound