execute if entity @s[tag=dead] run teleport @s ~ -100 ~
execute if entity @s[tag=dead] run scoreboard players operation #temp Room = @s Room
execute if entity @s[tag=dead] as @e[tag=ice_spike] if score @s Room = #temp Room run scoreboard players set @s WaitTime 0
execute if entity @s[tag=dead] run scoreboard players reset #temp Room

scoreboard players add @s WaitTime 1
execute if entity @s[scores={WaitTime=10}] run function luigis_mansion:entities/ice_spike/select_spike_to_fall
execute if entity @s[scores={WaitTime=11},tag=moving] run playsound luigis_mansion:entity.ice_spike.fall hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={WaitTime=11..30},tag=moving] run function luigis_mansion:old_animations/ice_spike/shake
execute if entity @s[scores={WaitTime=30..},tag=moving] run function luigis_mansion:entities/ice_spike/fall

execute if entity @s[tag=breaking] run function luigis_mansion:entities/ice_spike/breaking

execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall