execute store result score #temp Time run random value 1..100
execute if score #temp Time matches 1..50 run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{small_heart:1}}}
execute if score #temp Time matches 51..100 run data remove storage luigis_mansion:data furniture.loot
scoreboard players reset #temp Time
execute if data storage luigis_mansion:data current_state.current_data.portrait_battle run data remove storage luigis_mansion:data furniture.loot