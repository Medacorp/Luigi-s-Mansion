execute unless entity @e[tag=boolossus,tag=!dead,limit=1] as @a run function luigis_mansion:entities/ghost/boss_damage
execute unless entity @e[tag=boolossus,tag=!dead,limit=1] if score #temp Damage matches ..19 run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.boolossus.rank set value 2b
execute unless entity @e[tag=boolossus,tag=!dead,limit=1] if score #temp Damage matches 20..49 run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.boolossus.rank set value 1b
execute unless entity @e[tag=boolossus,tag=!dead,limit=1] run scoreboard players reset #temp Damage
execute unless entity @e[tag=boolossus,tag=!dead,limit=1] store result score #temp2 Boos run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.boolossus.max_health
execute unless entity @e[tag=boolossus,tag=!dead,limit=1] store result score #temp Boos run data get storage luigis_mansion:data current_state.current_data.boo_counter
execute unless entity @e[tag=boolossus,tag=!dead,limit=1] store result storage luigis_mansion:data current_state.current_data.boo_counter int 1 run scoreboard players operation #temp Boos += #temp2 Boos
execute unless entity @e[tag=boolossus,tag=!dead,limit=1] run scoreboard players reset #temp Boos
execute unless entity @e[tag=boolossus,tag=!dead,limit=1] run scoreboard players reset #temp2 Boos
execute unless entity @e[tag=boolossus,tag=!dead,limit=1] run scoreboard players reset #temp Damage