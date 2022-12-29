execute unless entity @a[tag=portrait_battle,limit=1] run data modify storage luigis_mansion:data drop_loot set from entity @s ArmorItems[3].tag.loot
execute if data storage luigis_mansion:data drop_loot.name run data modify storage luigis_mansion:data money_spawned set from storage luigis_mansion:data current_state.current_data.money_spawned
execute if data storage luigis_mansion:data drop_loot.name if data storage luigis_mansion:data money_spawned[-1] run function luigis_mansion:other/drop_loot_search
scoreboard players reset #temp Time
data remove entity @s ArmorItems[3].tag.loot
execute unless data storage luigis_mansion:data drop_loot if score #debug_messages Selected matches 1.. run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.loot_spawn_fail.previously_spawned","color":"red"}]}
execute if data storage luigis_mansion:data drop_loot.name if entity @s[scores={Room=1..}] run data modify storage luigis_mansion:data current_state.current_data.money_spawned append from storage luigis_mansion:data drop_loot.name
execute if data storage luigis_mansion:data drop_loot.contents if data storage luigis_mansion:data drop_loot{works_in_lab:1b} run function #luigis_mansion:other/drop_loot
execute if data storage luigis_mansion:data drop_loot.contents unless data storage luigis_mansion:data drop_loot{works_in_lab:1b} if entity @s[scores={Room=1..}] run function #luigis_mansion:other/drop_loot
data remove storage luigis_mansion:data drop_loot