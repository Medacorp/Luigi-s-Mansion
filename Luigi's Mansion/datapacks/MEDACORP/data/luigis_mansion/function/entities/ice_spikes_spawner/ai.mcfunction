scoreboard players set #temp Move 20
function luigis_mansion:entities/ice_spikes_spawner/move_forward
scoreboard players reset #temp Move
scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run function luigis_mansion:entities/ice_spikes_spawner/spawn
execute if entity @s[scores={ActionTime=1}] playsound luigis_mansion:entity.ice_spike.rise hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=6}] run function luigis_mansion:entities/ice_spikes_spawner/spawn
execute if entity @s[scores={ActionTime=6}] playsound luigis_mansion:entity.ice_spike.rise hostile @a[tag=same_room] ~ ~ ~ 1 0.9
execute if entity @s[scores={ActionTime=11}] run function luigis_mansion:entities/ice_spikes_spawner/spawn
execute if entity @s[scores={ActionTime=11}] playsound luigis_mansion:entity.ice_spike.rise hostile @a[tag=same_room] ~ ~ ~ 1 0.8
execute if entity @s[scores={ActionTime=16}] run function luigis_mansion:entities/ice_spikes_spawner/spawn
execute if entity @s[scores={ActionTime=16}] playsound luigis_mansion:entity.ice_spike.rise hostile @a[tag=same_room] ~ ~ ~ 1 0.85
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0