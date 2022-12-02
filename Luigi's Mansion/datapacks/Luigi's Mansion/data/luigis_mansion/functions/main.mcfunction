function #luigis_mansion:loaded_add_ons
function #luigis_mansion:post_loaded_add_ons
execute store result score #players Totals if entity @a[gamemode=!spectator]
execute store result score #all_players Totals if entity @a
execute as @a at @s run function luigis_mansion:main/players
execute unless entity @a[tag=!loaded_chunks,limit=1] positioned as @a[tag=loaded_chunks,limit=1] run function luigis_mansion:room/detect
scoreboard players set #freeze_timer Selected 0
# Ensure furniture runs after ghosts, so that if a ghost is being spawned by furniture, the room can still detect it
execute as @e[type=!minecraft:player,tag=!furniture] at @s run function luigis_mansion:main/non_players
execute as @e[type=!minecraft:player,tag=furniture] at @s run function luigis_mansion:main/non_players
execute as @e[type=minecraft:armor_stand,tag=model_piece] at @s run function luigis_mansion:animations/model_piece
execute as @e unless entity @s[scores={StunTime=1..},tag=!hurt,tag=!fleeing] run function luigis_mansion:main/tick_sound
execute as @a run function luigis_mansion:main/update_last_position
kill @e[tag=dead,tag=can_die]