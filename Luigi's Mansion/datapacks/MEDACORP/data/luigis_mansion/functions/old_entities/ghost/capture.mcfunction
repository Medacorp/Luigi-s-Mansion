scoreboard players set #firstRun Selected 1
$data modify storage luigis_mansion:data current_state.ghost_caught set value {uuid:$(UUID),total:0,caught:{}}
$execute if data storage luigis_mansion:data current_state.ghosts_caught[{uuid:$(UUID)}] run data modify storage luigis_mansion:data current_state.ghost_caught set from storage luigis_mansion:data current_state.ghosts_caught[{uuid:$(UUID)}]
$execute if data storage luigis_mansion:data current_state.ghosts_caught[{uuid:$(UUID)}] run data remove storage luigis_mansion:data current_state.ghosts_caught[{uuid:$(UUID)}]
function #luigis_mansion:entities/ghost/capture with entity @s ArmorItems[3].tag
data modify storage luigis_mansion:data current_state.ghosts_caught append from storage luigis_mansion:data current_state.ghost_caught
data remove storage luigis_mansion:data current_state.ghost_caught
scoreboard players reset #firstRun Selected

$data modify storage luigis_mansion:data current_state.ghost_caught set value {uuid:$(UUID),total:0,caught:{}}
$execute if data storage luigis_mansion:data current_state.current_data.ghosts_caught[{uuid:$(UUID)}] run data modify storage luigis_mansion:data current_state.ghost_caught set from storage luigis_mansion:data current_state.current_data.ghosts_caught[{uuid:$(UUID)}]
$execute if data storage luigis_mansion:data current_state.current_data.ghosts_caught[{uuid:$(UUID)}] run data remove storage luigis_mansion:data current_state.current_data.ghosts_caught[{uuid:$(UUID)}]
function #luigis_mansion:entities/ghost/capture with entity @s ArmorItems[3].tag
data modify storage luigis_mansion:data current_state.current_data.ghosts_caught append from storage luigis_mansion:data current_state.ghost_caught
data remove storage luigis_mansion:data current_state.ghost_caught

function #luigis_mansion:entities/ghost/post_capture