tag @s remove idle
scoreboard players reset @s TrainingRoomScore
scoreboard players reset @s DeathTime
function luigis_mansion:entities/player/animation/set/low_health_idle
tag @s remove death_animation
execute at @s[tag=vacuuming_ghost] run function luigis_mansion:entities/player/poltergust_breakage
stopsound @s neutral luigis_mansion:entity.e_gadd.talk.jeemee_jeemee
tellraw @s {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"extensive_training:dialog.pvp.death"}]}
execute at @s run playsound luigis_mansion:entity.e_gadd.talk.jeemee_jeemee neutral @s ~ ~ ~ 1
scoreboard players set @s Health 100