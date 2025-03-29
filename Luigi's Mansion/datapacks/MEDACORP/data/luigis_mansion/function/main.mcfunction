function #luigis_mansion:anti_cheating/scores
execute if data storage luigis_mansion:data dialogs[0] run function luigis_mansion:dialog
execute as @a at @s run function luigis_mansion:main/players
execute unless entity @a[tag=!loaded_chunks,limit=1] positioned as @a[tag=loaded_chunks,limit=1] in minecraft:overworld run function luigis_mansion:room/detect
scoreboard players set #freeze_timer Selected 0
execute as @e[type=!minecraft:player] at @s run function luigis_mansion:main/non_players
execute if score #global_mirror_reflections Selected matches 0 run data modify storage luigis_mansion:data reflections set value []
execute if score #global_mirror_reflections Selected matches 1 if data storage luigis_mansion:data reflections[-1] run function luigis_mansion:entities/reflection/create
execute as @e unless entity @s[scores={StunTime=1..},tag=!hurt,tag=!flee] run function luigis_mansion:main/tick_sound
execute as @a run function luigis_mansion:main/final_update
kill @e[tag=dead,tag=can_die]
execute if data storage luigis_mansion:data debug_message.spawned_furniture[0] if score #debug_messages Selected matches 2.. run tellraw @a {type:"translatable",translate:"luigis_mansion:message.debug.format",with:[{type:"translatable",translate:"luigis_mansion:message.debug",color:"gold"},{type:"translatable",translate:"luigis_mansion:message.debug.spawned_furniture",with:[{source:"storage",storage:"luigis_mansion:data",type:"nbt",nbt:"debug_message.spawned_furniture[]",interpret:true,separator:{type:"text",text:", ",hover_event:{action:"show_text",value:""}}}]}]}
data modify storage luigis_mansion:data debug_message.spawned_furniture set value []
execute if data storage luigis_mansion:data debug_message.spawned_entities[0] if score #debug_messages Selected matches 2.. run tellraw @a {type:"translatable",translate:"luigis_mansion:message.debug.format",with:[{type:"translatable",translate:"luigis_mansion:message.debug",color:"gold"},{type:"translatable",translate:"luigis_mansion:message.debug.spawned_entities",with:[{source:"storage",storage:"luigis_mansion:data",type:"nbt",nbt:"debug_message.spawned_entities[]",interpret:true,separator:{type:"text",text:", ",hover_event:{action:"show_text",value:""}}}]}]}
data modify storage luigis_mansion:data debug_message.spawned_entities set value []