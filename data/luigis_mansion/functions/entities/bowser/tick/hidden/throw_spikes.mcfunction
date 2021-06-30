scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=40}] rotated ~-15 0 positioned ^-2 ^1.5 ^1 run function luigis_mansion:entities/bowser/throw_spike
execute if entity @s[scores={ActionTime=50}] rotated ~12 0 positioned ^2 ^1.5 ^1 run function luigis_mansion:entities/bowser/throw_spike
execute if entity @s[scores={ActionTime=60}] rotated ~-5 0 positioned ^-2 ^1.5 ^1 run function luigis_mansion:entities/bowser/throw_spike
execute if predicate luigis_mansion:bowser_fast_spike_explosion run scoreboard players add @e[tag=spike_ball] ActionTime 120
tag @s[scores={ActionTime=80}] remove throw_spikes
scoreboard players reset @s[scores={ActionTime=80}] ActionTime