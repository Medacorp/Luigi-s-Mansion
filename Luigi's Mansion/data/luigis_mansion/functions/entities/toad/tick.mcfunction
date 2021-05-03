scoreboard players operation #temp PassiveNr = @s PassiveNr
execute as @e[tag=toad_body] if score @s PassiveNr = #temp PassiveNr run tag @s add this_model
execute as @e[tag=toad_head] if score @s PassiveNr = #temp PassiveNr run tag @s add this_model

function #luigis_mansion:entities/toad/dialog

execute unless entity @s[tag=!happy,tag=!talk] facing entity @p[gamemode=!spectator,tag=same_room] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~

execute at @s[tag=happy,tag=!explaining] as @e[tag=this_model,tag=toad_head,limit=1] run function luigis_mansion:animations/toad/happy
execute at @s[tag=explaining] as @e[tag=this_model,tag=toad_head,limit=1] run function luigis_mansion:animations/toad/explaining
execute at @s[tag=!happy,tag=!explaining] as @e[tag=this_model,tag=toad_head,limit=1] run function luigis_mansion:animations/toad/crying

execute unless entity @s[tag=!dead,tag=!remove_from_existence] run teleport @e[tag=this_model] ~ -100 ~
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run tag @e[tag=this_model] add dead

scoreboard players reset #temp PassiveNr
tag @e[tag=this_model] remove this_model