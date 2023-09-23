execute if entity @s[tag=boolossus] store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.boolossus.rank
$execute if entity @s[tag=boolossus] if score #temp Time matches ..$(rank) run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.boolossus.rank set value $(rank)
scoreboard players reset #temp Time