execute if entity @s[tag=king_boo] store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.king_boo.rank
$execute if entity @s[tag=king_boo] if score #temp Time matches ..$(rank) run data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.king_boo.rank set value $(rank)
scoreboard players reset #temp Time