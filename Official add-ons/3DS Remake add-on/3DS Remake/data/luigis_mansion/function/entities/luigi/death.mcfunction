tag @s add death_animation
execute unless data storage luigis_mansion:data current_state.current_data.portrait_battle if entity @s[tag=!gooigi] as @e[tag=this_player,limit=1] run function luigis_mansion:entities/player/death
execute if data storage luigis_mansion:data current_state.current_data.portrait_battle run tag @e[tag=this_player,limit=1] add spectator
execute if entity @s[tag=gooigi] run tag @e[tag=this_player,limit=1] add spectator
execute unless data storage luigis_mansion:data current_state.current_data.portrait_battle if entity @s[tag=!gooigi,scores={Room=1..}] if score #luigi_amiibo Selected matches 1 unless data storage luigis_mansion:data current_state.current_data{polterpup_revived:1b} run function 3ds_remake:entities/luigi/revived_by_polterpup