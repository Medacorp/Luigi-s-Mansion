function #luigis_mansion:loaded_add_ons
function #luigis_mansion:post_loaded_add_ons
execute store result score #players Totals if entity @a[gamemode=!spectator]
execute store result score #all_players Totals if entity @a
execute as @a at @s run function luigis_mansion:main/players
execute unless entity @a[tag=!loaded_chunks,limit=1] at @a[tag=loaded_chunks,limit=1] run function luigis_mansion:room/detect
execute as @e[type=!minecraft:player] at @s run function luigis_mansion:main/non_players
function luigis_mansion:anti_cheating/scores
execute unless score #mansion_type Selected matches -1 unless entity @a[tag=blackout_lightning,limit=1] if predicate luigis_mansion:lightning_strike_chance run function luigis_mansion:other/lightning_strike
kill @e[tag=dead,tag=can_die]
execute at @a[tag=vacuuming] run kill @e[distance=..0.7,type=minecraft:area_effect_cloud,tag=position,limit=1]
execute at @a[tag=vacuuming] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["position"],Duration:2}