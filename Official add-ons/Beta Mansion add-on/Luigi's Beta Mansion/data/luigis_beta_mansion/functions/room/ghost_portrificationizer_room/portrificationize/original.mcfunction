execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.neville{portrificationized:0b,health:0} run tag @e[tag=e_gadd,scores={Room=-3}] add portrificationizing
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.lydia{portrificationized:0b,health:0} run tag @e[tag=e_gadd,scores={Room=-3}] add portrificationizing
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.miss_petunia{portrificationized:0b,health:0} run tag @e[tag=e_gadd,scores={Room=-3}] add portrificationizing
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.spooky{portrificationized:0b,health:0} run tag @e[tag=e_gadd,scores={Room=-3}] add portrificationizing
tag @e[tag=e_gadd,tag=portrificationize_dialog] remove portrificationizing
tag @e[tag=e_gadd,tag=portrificationizing,tag=!portrificationize_dialog] remove talk
scoreboard players set @e[tag=e_gadd,tag=portrificationizing,tag=!portrificationize_dialog] Dialog 0
execute if entity @e[tag=e_gadd,tag=portrificationizing,tag=!portrificationize_dialog] as @a run trigger EGaddGPRChoice set 0