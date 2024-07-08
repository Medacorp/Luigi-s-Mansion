execute if entity @s[tag=dead] as @e[tag=ice_spike,tag=exact_same_room] run scoreboard players set @s WaitTime 0

scoreboard players add @s WaitTime 1
execute unless entity @e[tag=same_room,tag=!spectator,tag=player,limit=1] run scoreboard players set @s WaitTime 0
execute if entity @s[scores={WaitTime=10}] run function luigis_mansion:entities/ice_spike/select_spike_to_fall
execute if entity @s[scores={WaitTime=11},tag=attack] run playsound luigis_mansion:entity.ice_spike.fall hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={WaitTime=11..30},tag=attack] run function luigis_mansion:entities/ice_spike/shake
execute if entity @s[scores={WaitTime=30..},tag=attack,tag=!breaking] run function luigis_mansion:entities/ice_spike/fall

execute if entity @s[tag=breaking] run function luigis_mansion:entities/ice_spike/breaking