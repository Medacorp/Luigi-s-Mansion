scoreboard players set * ChangedMansion
scoreboard players reset @e ChangedMansion
function #luigis_mansion:room/remove_forceloaded_chunks
function luigis_mansion:data/load
execute as @a unless entity @s[scores={Room=-4..-1}] run function luigis_mansion:room/underground_lab/warp_to