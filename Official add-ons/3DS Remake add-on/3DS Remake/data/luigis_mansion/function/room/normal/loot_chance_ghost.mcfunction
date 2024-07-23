data modify storage luigis_mansion:data backup_loot set from entity @s data.loot
data remove entity @s data.loot
data modify entity @s data.loot set from storage luigis_mansion:data backup_loot.drop_at_0
data remove storage luigis_mansion:data backup_loot.drop_at_0
execute store result score #temp Time run random value 1..100
execute if score #temp Time matches 1..15 if entity @s[tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] unless data entity @s data.loot run data modify entity @s data.loot.contents.luigis_mansion.small_heart set value 1
scoreboard players reset #temp Time
execute if data entity @s data.loot.contents.luigis_mansion.small_heart run tag @s add had_heart
execute if data entity @s data.loot.contents.luigis_mansion.big_heart run tag @s add had_heart
execute if data entity @s data.loot.contents.3ds_remake.huge_heart run tag @s add had_heart
execute if data entity @s data.loot run function luigis_mansion:other/drop_loot
data remove entity @s data.loot
execute if entity @a[tag=killer,limit=1,scores={GhostCount=2..}] if entity @s[tag=!had_small_heart,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run data modify entity @s data.loot.contents.luigis_mansion.small_heart set value 1
tag @s remove had_heart
execute if data entity @s data.loot unless data storage luigis_mansion:data current_state.current_data.portrait_battle run function luigis_mansion:other/drop_loot
data remove entity @s data.loot
data modify entity @s data.loot set from storage luigis_mansion:data backup_loot
data remove storage luigis_mansion:data backup_loot