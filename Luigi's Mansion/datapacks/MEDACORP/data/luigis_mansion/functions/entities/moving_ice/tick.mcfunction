scoreboard players set #temp Move 20
function luigis_mansion:entities/moving_ice/move_forward
scoreboard players reset #temp Move
scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run function luigis_mansion:spawn_entities/ice_spikes
execute if entity @s[scores={ActionTime=1}] positioned ~ ~-2.2 ~ run scoreboard players operation @e[tag=ice_spikes,distance=..0.1,limit=1] Owner = @s GhostNr
scoreboard players set @s[scores={ActionTime=6}] ActionTime 0