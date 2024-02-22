execute as @a[tag=!gooigi] run function luigis_mansion:entities/ghost/boss_damage_score
execute if score #temp Damage matches ..19 run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.chauncey.rank set value 2b
execute if score #temp Damage matches 20..49 run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.chauncey.rank set value 1b
execute if score #temp Damage matches 50.. run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.luigis_mansion.chauncey.rank set value 0b
scoreboard players reset #temp Damage