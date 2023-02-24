tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion:message.reloaded"}]}

scoreboard players reset * Loaded
scoreboard players set #training_choice Selected 0
scoreboard players set #extra_gallery Selected 0
function #luigis_mansion:loaded_add_ons
function #luigis_mansion:post_loaded_add_ons

scoreboard players add * Offline 1
scoreboard players reset @e Offline
scoreboard players set @a Offline 0

forceload add 4859 -101 4668 83
forceload add 27 0 27 0
forceload add 0 0
function #luigis_mansion:mansion_forceload_chunks

function #luigis_mansion:upgrade_path