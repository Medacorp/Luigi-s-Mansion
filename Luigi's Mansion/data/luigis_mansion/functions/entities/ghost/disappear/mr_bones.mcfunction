execute if entity @s[tag=mr_bones] run tag @e[tag=this_entity,limit=1] add mr_bones
execute if entity @s[tag=mr_bones] run scoreboard players operation #temp GhostNr = @s GhostNr
execute if entity @s[tag=mr_bones] as @e[tag=mr_bones_body] if score @s GhostNr = #temp GhostNr run tag @s add this_mr_bones_body
execute if entity @s[tag=mr_bones] run teleport @e[tag=this_mr_bones_body,limit=1] ~ -100 ~
execute if entity @s[tag=mr_bones] run tag @e[tag=this_mr_bones_body,limit=1] add dead
execute if entity @s[tag=mr_bones] run scoreboard players reset #temp GhostNr
execute if entity @s[tag=mr_bones] run tag @e[tag=this_mr_bones_body,limit=1] remove this_mr_bones_body