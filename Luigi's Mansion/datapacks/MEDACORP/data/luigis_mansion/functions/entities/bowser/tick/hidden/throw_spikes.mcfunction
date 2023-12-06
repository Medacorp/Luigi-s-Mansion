scoreboard players add @s ActionTime 1
scoreboard players add @s[scores={ActionTime=1}] AnimationProgress 0
function luigis_mansion:old_animations/bowser/throw_spikes
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.bowser.charge hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={ActionTime=40}] run playsound luigis_mansion:entity.bowser.throw hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={ActionTime=40}] rotated ~-15 0 positioned ^-2 ^ ^1 run function luigis_mansion:entities/bowser/throw_spike
execute if entity @s[scores={ActionTime=50}] run playsound luigis_mansion:entity.bowser.throw hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={ActionTime=50}] rotated ~12 0 positioned ^2 ^ ^1 run function luigis_mansion:entities/bowser/throw_spike
execute if entity @s[scores={ActionTime=60}] run playsound luigis_mansion:entity.bowser.throw_last hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={ActionTime=60}] rotated ~-5 0 positioned ^-2 ^ ^1 run function luigis_mansion:entities/bowser/throw_spike
execute if entity @s[scores={ActionTime=80}] if predicate luigis_mansion:bowser_fast_spike_explosion run scoreboard players add @e[tag=spike_ball] ActionTime 120
tag @s[scores={ActionTime=80}] remove throw_spikes
scoreboard players add @s[scores={ActionTime=80}] AnimationProgress 0
scoreboard players reset @s[scores={ActionTime=80}] ActionTime