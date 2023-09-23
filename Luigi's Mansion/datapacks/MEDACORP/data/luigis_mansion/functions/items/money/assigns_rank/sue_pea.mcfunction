execute if entity @s[tag=sue_pea] store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.sue_pea.rank
$execute if entity @s[tag=sue_pea] if score #temp Time matches ..$(rank) run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.sue_pea.rank set value $(rank)
scoreboard players reset #temp Time