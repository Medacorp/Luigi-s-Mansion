data modify storage luigis_mansion:data drop_loot set from entity @s data.loot
execute if data storage luigis_mansion:data drop_loot.name run function luigis_mansion:other/drop_loot_search with storage luigis_mansion:data drop_loot.name
execute unless data storage luigis_mansion:data drop_loot if data entity @s data.loot if score #debug_messages Selected matches 1.. run tellraw @a {type:"translatable",translate:"luigis_mansion:message.debug.format",with:[{type:"translatable",translate:"luigis_mansion:message.debug",color:"gold"},{type:"translatable",translate:"luigis_mansion:message.debug.loot_spawn_fail.previously_spawned",color:"red"}]}
data remove entity @s data.loot
execute if data storage luigis_mansion:data drop_loot.name if entity @s[scores={Room=1..}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned append from storage luigis_mansion:data drop_loot.name
execute if data storage luigis_mansion:data drop_loot.contents if data storage luigis_mansion:data drop_loot{works_in_lab:1b} run function #luigis_mansion:other/drop_loot
execute if data storage luigis_mansion:data drop_loot.contents unless data storage luigis_mansion:data drop_loot{works_in_lab:1b} if entity @s[scores={Room=0..}] run function #luigis_mansion:other/drop_loot
data remove storage luigis_mansion:data drop_loot