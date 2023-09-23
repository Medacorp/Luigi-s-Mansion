execute if entity @s[tag=chauncey] store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.chauncey.rank
$execute if entity @s[tag=chauncey] if score #temp Time matches ..$(rank) run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.chauncey.rank set value $(rank)
scoreboard players reset #temp Time