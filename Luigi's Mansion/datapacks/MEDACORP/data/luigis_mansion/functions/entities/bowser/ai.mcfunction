function luigis_mansion:entities/ghost/ai

scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=model_piece,tag=bowser_model,tag=head,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add this_head
scoreboard players reset #temp GhostNr

$execute if entity @s[tag=dying] run function $(namespace):entities/bowser/ai/$(id)

execute if entity @s[tag=throw_spike_balls] run function luigis_mansion:entities/bowser/attack/throw_spike_balls
execute if entity @s[tag=throw_fast_spike_balls] run function luigis_mansion:entities/bowser/attack/throw_spike_balls/fast
execute if entity @s[tag=breathe_fire] run function luigis_mansion:entities/bowser/attack/breathe_fire
execute if entity @s[tag=vacuum_attack] run function luigis_mansion:entities/bowser/attack/vacuum
execute if entity @s[tag=tail_attack] run function luigis_mansion:entities/bowser/attack/tail
execute if entity @s[tag=headless_run] run function luigis_mansion:entities/bowser/headless_run
execute if entity @s[tag=run] run function luigis_mansion:entities/bowser/run
execute if entity @s[tag=walk] run function luigis_mansion:entities/bowser/walk
execute if entity @s[tag=jump] run function luigis_mansion:entities/bowser/jump
execute if entity @s[tag=turn_around] run function luigis_mansion:entities/bowser/turn_around
execute if entity @s[tag=look_around] run function luigis_mansion:entities/bowser/look_around
execute if entity @s[tag=grabbing_head] run function luigis_mansion:entities/bowser/grabbing_head
execute if entity @s[tag=dying] run function luigis_mansion:entities/bowser/death

execute if entity @s[tag=!headless_run,tag=!run,tag=!walk,tag=!jump] positioned ^ ^ ^-1 if entity @e[distance=..3,tag=player,tag=!spectator,limit=1] run function luigis_mansion:entities/bowser/collide
execute if entity @s[tag=!headless_run,tag=!run,tag=!walk,tag=!jump] at @e[tag=this_head,limit=1] positioned ^ ^1.4 ^ if entity @e[distance=..3,tag=player,tag=!spectator,limit=1] run function luigis_mansion:entities/bowser/collide

tag @e[tag=this_head,limit=1] remove this_head