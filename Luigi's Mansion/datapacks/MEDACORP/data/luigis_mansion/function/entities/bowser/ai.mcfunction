function luigis_mansion:entities/ghost/get_target
function luigis_mansion:entities/ghost/ai

scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=model_piece,tag=bowser_model,tag=head,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add this_head
scoreboard players reset #temp GhostNr

$execute at @s[tag=!dying] run function $(namespace):entities/bowser/ai/$(id)

execute at @s[tag=throw_spike_balls] run function luigis_mansion:entities/bowser/attack/throw_spike_balls
execute at @s[tag=throw_fast_spike_balls] run function luigis_mansion:entities/bowser/attack/throw_spike_balls/fast
execute at @s[tag=breathe_fire] run function luigis_mansion:entities/bowser/attack/breathe_fire
execute at @s[tag=vacuum_attack] run function luigis_mansion:entities/bowser/attack/vacuum
execute at @s[tag=tail_attack] run function luigis_mansion:entities/bowser/attack/tail
execute at @s[tag=headless_run] run function luigis_mansion:entities/bowser/attack/headless_run
execute at @s[tag=run] run function luigis_mansion:entities/bowser/run
execute at @s[tag=walk] run function luigis_mansion:entities/bowser/walk
execute at @s[tag=jump] run function luigis_mansion:entities/bowser/jump
execute at @s[tag=turn_around] run function luigis_mansion:entities/bowser/turn_around
execute at @s[tag=look_around] run function luigis_mansion:entities/bowser/look_around
execute at @s[tag=grabbing_head] run function luigis_mansion:entities/bowser/grabbing_head
execute at @s[tag=dying] run function luigis_mansion:entities/bowser/death

execute at @s[tag=!headless_run,tag=!run,tag=!walk,tag=!jump] positioned ^ ^ ^-1 at @e[distance=..3,tag=player,tag=!spectator,limit=1] run function luigis_mansion:entities/bowser/collide
execute at @s[tag=!headless_run,tag=!run,tag=!walk,tag=!jump] at @e[tag=this_head,limit=1] positioned ^ ^1.4 ^ at @e[distance=..3,tag=player,tag=!spectator,limit=1] run function luigis_mansion:entities/bowser/collide

tag @e[tag=this_head,limit=1] remove this_head