execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.in_mansion_time
execute unless score #temp Time matches 2147483647 unless score #freeze_timer Selected matches 1 store result storage luigis_mansion:data current_state.current_data.in_mansion_time int 1 run scoreboard players add #temp Time 1
execute unless score #freeze_timer Selected matches 1 run scoreboard players operation #gbh_clock Selected += #gbh_clock_increase Selected
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.lowest_health_moment
execute store result storage luigis_mansion:data current_state.current_data.lowest_health_moment int 1 run scoreboard players operation #temp Time < @a Health
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.lowest_difficulty
execute store result storage luigis_mansion:data current_state.current_data.lowest_difficulty int 1 run scoreboard players operation #temp Time < #difficulty Selected
scoreboard players reset #temp Time