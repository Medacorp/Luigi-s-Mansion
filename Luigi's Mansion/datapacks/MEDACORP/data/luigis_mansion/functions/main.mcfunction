function #luigis_mansion:anti_cheating/scores
execute as @a at @s run function luigis_mansion:main/players
execute unless entity @a[tag=!loaded_chunks,limit=1] positioned as @a[tag=loaded_chunks,limit=1] run function luigis_mansion:room/detect
scoreboard players set #freeze_timer Selected 0
execute as @e[type=!minecraft:player,tag=!reflection] at @s run function luigis_mansion:main/non_players
execute as @e[type=!minecraft:player,tag=reflection] at @s run function luigis_mansion:main/reflections
execute if data storage luigis_mansion:data reflections[-1] run function luigis_mansion:entities/reflection/create
execute as @e[type=minecraft:armor_stand,tag=model_piece] at @s run function luigis_mansion:animations/model_piece
execute as @e unless entity @s[scores={StunTime=1..},tag=!hurt,tag=!fleeing] run function luigis_mansion:main/tick_sound
execute as @a run function luigis_mansion:main/update_last_position
kill @e[tag=dead,tag=can_die]
execute if data storage luigis_mansion:data debug_message.spawned_furniture[0] if score #debug_messages Selected matches 2.. run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.spawned_furniture","with":[{"storage":"luigis_mansion:data","nbt":"debug_message.spawned_furniture[]","interpret":true,"separator":{"text":", ","hoverEvent":{"action":"show_text","value":""}}}]}]}
data modify storage luigis_mansion:data debug_message.spawned_furniture set value []
execute if data storage luigis_mansion:data debug_message.spawned_entities[0] if score #debug_messages Selected matches 2.. run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.spawned_entities","with":[{"storage":"luigis_mansion:data","nbt":"debug_message.spawned_entities[]","interpret":true,"separator":{"text":", ","hoverEvent":{"action":"show_text","value":""}}}]}]}
data modify storage luigis_mansion:data debug_message.spawned_entities set value []