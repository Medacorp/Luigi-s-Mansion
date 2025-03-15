scoreboard players reset @s TrainingRoomScore
scoreboard players reset @s DeathTime
tag @s remove death_animation
stopsound @s neutral luigis_mansion:entity.e_gadd.talk.jeemee_jeemee
tellraw @s {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.e_gadd",color:"green"},{type:"translatable",translate:"extensive_training:dialog.pvp.death"}]}
execute at @s run playsound luigis_mansion:entity.e_gadd.talk.jeemee_jeemee neutral @s ~ ~ ~ 1
scoreboard players set @s Health 100