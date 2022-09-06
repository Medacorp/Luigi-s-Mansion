scoreboard players operation #temp PassiveNr = @s PassiveNr
execute as @e[tag=model_piece,scores={PassiveNr=-2147483648..}] if score @s PassiveNr = #temp PassiveNr run tag @s add this_model

function #luigis_mansion:entities/toad/dialog

execute store result entity @s Pos[1] double 0.01 run scoreboard players get @s HomeY

execute at @s unless entity @s[tag=!happy,tag=!talk] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~

execute at @s[tag=happy,tag=!explaining] run function luigis_mansion:animations/toad/happy
execute at @s[tag=explaining] run function luigis_mansion:animations/toad/explaining
execute at @s[tag=!happy,tag=!explaining] run function luigis_mansion:animations/toad/crying

scoreboard players reset #temp PassiveNr
tag @e[tag=this_model] add found_owner
tag @e[tag=this_model] remove this_model
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall