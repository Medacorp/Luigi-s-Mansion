$execute in $(dimension) positioned $(x) $(y) $(z) rotated $(y_rotation) $(x_rotation) as @a run teleport @s ~ ~ ~ ~ ~
tag @a remove portrait_battle
tag @a remove portrait_ghost_spawned
tag @a remove catching_the_portrait_ghost
tag @e remove cannot_be_removed
gamemode adventure @a[gamemode=spectator,tag=!dead_player]
scoreboard players set @a[tag=!dead_player] Health 100
scoreboard players set @s Room -4
scoreboard players set @s LastRoom -4
function luigis_mansion:items/poltergust_3000/reset_element
bossbar set 3ds_remake:portrait_battle players

function luigis_mansion:room/reset_mansion with storage luigis_mansion:data current_state.current_data.mansion_id
data modify storage luigis_mansion:data current_state.current_data set from storage 3ds_remake:data loaded_mansion.data
function #3ds_remake:room/portrait_battle/load_current_data
data modify storage 3ds_remake:data loaded_mansion set value {settings:{},data:{},high_scores:{}}
function luigis_mansion:room/forceload_mansion with storage luigis_mansion:data current_state.current_data.mansion_id