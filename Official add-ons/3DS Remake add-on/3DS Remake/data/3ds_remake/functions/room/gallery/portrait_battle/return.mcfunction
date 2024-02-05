tag @a remove portrait_battle
tag @a remove portrait_ghost_spawned
tag @a remove catching_the_portrait_ghost
kill @e[tag=cannot_be_removed]
gamemode adventure @a[gamemode=spectator]
scoreboard players set @a Health 100
scoreboard players set @s Room -4
scoreboard players set @s LastRoom -4
function luigis_mansion:items/poltergust_3000/reset_element
bossbar set 3ds_remake:portrait_battle players
schedule function 3ds_remake:room/gallery/portrait_battle/load_current_data 2t

function 3ds_remake:old_entities/portrificationizing_ghost/try_to_clear_portrait_task
scoreboard players set #temp Money 6000
scoreboard players set #temp Time 0
execute if data storage 3ds_remake:data current_state.trophy.normal{task_9:0b} run function 3ds_remake:room/gallery/interact_with_trophy/get_portrait_speed_count
execute if score #temp Time matches 23 if data storage 3ds_remake:data current_state.trophy.normal{task_9:0b} run function 3ds_remake:room/gallery/clear_task/normal/task_9
scoreboard players reset #temp Time
scoreboard players set #temp Money 3600
scoreboard players set #temp Time 0
execute if data storage 3ds_remake:data current_state.trophy.master{task_8:0b} run function 3ds_remake:room/gallery/interact_with_trophy/get_portrait_speed_count
execute if score #temp Time matches 23 if data storage 3ds_remake:data current_state.trophy.master{task_8:0b} run function 3ds_remake:room/gallery/clear_task/master/task_8
scoreboard players reset #temp Time
scoreboard players reset #temp Money
function 3ds_remake:room/gallery/interact_with_trophy/get_portrait_hard_count
execute if score #temp Time matches 23 run advancement grant @a only 3ds_remake:3ds_remake/hard_labor
scoreboard players reset #temp Time
function 3ds_remake:room/gallery/interact_with_trophy/get_portrait_no_damage_count
execute if score #temp Time matches 23 run advancement grant @a only 3ds_remake:3ds_remake/no_touchy
scoreboard players reset #temp Time