tellraw @a {"text":"[Server] Reloaded"}

scoreboard players add * Offline 1
scoreboard players reset @e Offline
scoreboard players set @a Offline 0

forceload add 4859 -101 4668 83
forceload add 27 0 27 0
function #luigis_mansion:mansion_forceload_chunks

function #luigis_mansion:upgrade_path