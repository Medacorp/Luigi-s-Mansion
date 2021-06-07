function luigis_mansion:entities/orville/drop_loot
particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.6 0.2 1 30
teleport @s ~ -100 ~
execute store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville.orville_health int 1 run scoreboard players set @s Health 0
execute if data storage luigis_mansion:data current_state.current_data.portrait_ghosts.henry_and_orville{henry_health:0} run advancement grant @a only luigis_mansion:portrait_ghosts/henry_and_orville