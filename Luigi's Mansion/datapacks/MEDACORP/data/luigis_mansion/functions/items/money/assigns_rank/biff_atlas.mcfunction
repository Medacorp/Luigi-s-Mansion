execute if entity @s[tag=biff_atlas] store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.biff_atlas.rank
$execute if entity @s[tag=biff_atlas] if score #temp Time matches ..$(rank) run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.biff_atlas.rank set value $(rank)
scoreboard players reset #temp Time