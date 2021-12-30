execute if block ~ ~ ~0.5 #luigis_mansion:all_ignore if block ~ ~1 ~0.5 #luigis_mansion:all_ignore run teleport @s[scores={SlipZ=1..}] ~ ~ ~0.008
execute if block ~ ~ ~-0.5 #luigis_mansion:all_ignore if block ~ ~1 ~-0.5 #luigis_mansion:all_ignore run teleport @s[scores={SlipZ=..-1}] ~ ~ ~-0.008
scoreboard players remove @s[scores={SlipZ=1..}] SlipZ 1
scoreboard players add @s[scores={SlipZ=..-1}] SlipZ 1
scoreboard players add #temp Time 1
execute unless score @s SlipZ matches 0 if score #temp Time matches ..19 at @s run function luigis_mansion:entities/player/riding_poltergust/slip_z