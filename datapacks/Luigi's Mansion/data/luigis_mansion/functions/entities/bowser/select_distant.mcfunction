execute unless entity @e[tag=spike_ball,limit=1] run tag @s add throw_spikes
execute if entity @e[tag=spike_ball,limit=1] if entity @a[distance=..15,gamemode=!spectator] run tag @s add walk
execute if entity @e[tag=spike_ball,limit=1] if entity @a[distance=15..25,gamemode=!spectator] run tag @s add run
execute if entity @e[tag=spike_ball,limit=1] if entity @a[distance=25..,gamemode=!spectator] run tag @s add jump