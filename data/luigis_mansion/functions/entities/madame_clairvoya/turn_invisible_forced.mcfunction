scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=madame_clairvoya_head] if score @s GhostNr = #temp GhostNr run tag @s add this_model
execute as @e[tag=madame_clairvoya_body] if score @s GhostNr = #temp GhostNr run tag @s add this_model
function luigis_mansion:entities/madame_clairvoya/turn_invisible
scoreboard players reset #temp GhostNr
tag @e[tag=this_model] remove this_model