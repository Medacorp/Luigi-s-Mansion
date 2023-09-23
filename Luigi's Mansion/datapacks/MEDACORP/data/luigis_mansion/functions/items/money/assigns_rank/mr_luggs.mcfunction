execute if entity @s[tag=mr_luggs] store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.mr_luggs.rank
$execute if entity @s[tag=mr_luggs] if score #temp Time matches ..$(rank) run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.mr_luggs.rank set value $(rank)
scoreboard players reset #temp Time