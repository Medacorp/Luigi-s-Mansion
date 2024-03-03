scoreboard players add @s ActionTime 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"throw_spike_balls"}
execute if entity @s[scores={ActionTime=40}] unless score #mirrored Selected matches 1 rotated ~15 0 positioned ^2 ^ ^1 run function luigis_mansion:entities/bowser/attack/throw_spike_balls/spawn
execute if entity @s[scores={ActionTime=40}] if score #mirrored Selected matches 1 rotated ~-15 0 positioned ^-2 ^ ^1 run function luigis_mansion:entities/bowser/attack/throw_spike_balls/spawn
execute if entity @s[scores={ActionTime=50}] unless score #mirrored Selected matches 1 rotated ~-12 0 positioned ^-2 ^ ^1 run function luigis_mansion:entities/bowser/attack/throw_spike_balls/spawn
execute if entity @s[scores={ActionTime=50}] if score #mirrored Selected matches 1 rotated ~12 0 positioned ^2 ^ ^1 run function luigis_mansion:entities/bowser/attack/throw_spike_balls/spawn
execute if entity @s[scores={ActionTime=60}] unless score #mirrored Selected matches 1 rotated ~5 0 positioned ^2 ^ ^1 run function luigis_mansion:entities/bowser/attack/throw_spike_balls/spawn
execute if entity @s[scores={ActionTime=60}] if score #mirrored Selected matches 1 rotated ~-5 0 positioned ^-2 ^ ^1 run function luigis_mansion:entities/bowser/attack/throw_spike_balls/spawn
tag @s[scores={ActionTime=80}] remove throw_spike_balls
tag @s[scores={ActionTime=80}] remove throw_fast_spike_balls
tag @s[scores={ActionTime=80}] remove fast_spike_balls
data remove entity @s[scores={ActionTime=80}] data.animation
scoreboard players reset @s[scores={ActionTime=80}] ActionTime