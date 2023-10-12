execute as @a at @s run playsound luigis_mansion:entity.ghost.laugh hostile @s ~ ~ ~ 3
execute store result bossbar 3ds_remake:portrait_battle max run data get storage 3ds_remake:data loaded_mansion.high_scores.speed
execute if data storage 3ds_remake:data loaded_mansion.high_scores{speed:-1} run bossbar set 3ds_remake:portrait_battle max 2147483647
tag @e[tag=furniture,tag=door,tag=!blockade,scores={Room=1..}] remove can_play_blockade_sound
tag @e[tag=furniture,tag=door,tag=!blockade,scores={Room=1..}] add blockade