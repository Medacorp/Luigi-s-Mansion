scoreboard players set #temp Move 20
function luigis_mansion:entities/ice_spikes_spawner/move_forward
scoreboard players reset #temp Move
scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run function luigis_mansion:entities/ice_spikes_spawner/spawn
scoreboard players set @s[scores={ActionTime=6}] ActionTime 0