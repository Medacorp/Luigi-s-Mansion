stopsound @s[tag=!gooigi] music
playsound luigis_mansion:music.game_over music @s[tag=!portrait_battle,tag=!gooigi] ~ ~ ~ 1000
scoreboard players set @s[tag=!gooigi] Music 121
tag @s add death_animation
tag @s add spectator
scoreboard players operation #temp ID = @s ID
execute as @e[type=minecraft:armor_stand,tag=luigi_model,tag=!found_owner] if score @s ID = #temp ID run tag @s add this_luigi
execute as @e[type=minecraft:armor_stand,tag=gooigi_model,tag=!found_owner] if score @s ID = #temp ID run tag @s add this_luigi
scoreboard players set @e[tag=this_luigi] Time 0
scoreboard players set @e[tag=this_luigi] AnimationProgress 0
tag @e[tag=this_luigi] remove this_luigi
scoreboard players reset #temp ID
execute if entity @s[tag=!portrait_battle,tag=!gooigi,scores={Room=1..}] if score #luigi_amiibo Selected matches 1 unless data storage luigis_mansion:data current_state.current_data{polterpup_revived:1b} run function 3ds_remake:entities/player/revived_by_polterpup