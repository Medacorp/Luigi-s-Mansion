tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.reloaded"}]}

function #luigis_mansion:anti_cheating/scores
scoreboard players reset * Loaded
scoreboard players set #training_choice Selected 0
scoreboard players set #extra_gallery Selected 0
function #luigis_mansion:loaded_add_ons
function #luigis_mansion:post_loaded_add_ons

scoreboard players add * Offline 1
scoreboard players reset @e Offline
scoreboard players set @a Offline 0

execute unless data storage luigis_mansion:data current_state run forceload add 727 -42 796 23
execute unless data storage luigis_mansion:data current_state run forceload add 4859 -101 4668 83
execute unless data storage luigis_mansion:data current_state run forceload add 27 0 27 0
execute unless data storage luigis_mansion:data current_state run forceload add 0 0
function luigis_mansion:room/forceload_mansion with storage luigis_mansion:data current_state.current_data.mansion_id