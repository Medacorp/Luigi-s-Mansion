data modify entity @s data.loot set from entity @s data.loot_storage.drop_at_0
execute store result score #temp Time run random value 1..100
execute if score #temp Time matches 1..15 if entity @e[tag=killer,limit=1,scores={Health=31..},tag=!gooigi] if entity @s[tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] unless data entity @s data.loot run data modify entity @s data.loot set value {contents:[{name:{namespace:"luigis_mansion",id:"item/small_heart"}}]}
execute if score #temp Time matches 1..15 if entity @e[tag=killer,limit=1,scores={Health=16..},tag=gooigi] if entity @s[tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] unless data entity @s data.loot run data modify entity @s data.loot set value {contents:[{name:{namespace:"luigis_mansion",id:"item/small_heart"}}]}
execute if score #temp Time matches 1..50 if entity @e[tag=killer,limit=1,scores={Health=..30},tag=!gooigi] if entity @s[tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] unless data entity @s data.loot run data modify entity @s data.loot set value {contents:[{name:{namespace:"luigis_mansion",id:"item/small_heart"}}]}
execute if score #temp Time matches 1..50 if entity @e[tag=killer,limit=1,scores={Health=..15},tag=gooigi] if entity @s[tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] unless data entity @s data.loot run data modify entity @s data.loot set value {contents:[{name:{namespace:"luigis_mansion",id:"item/small_heart"}}]}
scoreboard players reset #temp Time
execute if data entity @s data.loot{contents:[{name:{namespace:"luigis_mansion",id:"item/small_heart"}}]} run tag @s add had_heart
execute if data entity @s data.loot{contents:[{name:{namespace:"luigis_mansion",id:"item/big_heart"}}]} run tag @s add had_heart
execute if data entity @s data.loot{contents:[{name:{namespace:"3ds_remake",id:"item/huge_heart"}}]} run tag @s add had_heart
execute if data entity @s data.loot unless data storage luigis_mansion:data current_state.current_data.portrait_battle run function luigis_mansion:other/drop_loot
data remove entity @s data.loot
execute if entity @e[tag=killer,limit=1,scores={GhostCount=2..}] if entity @s[tag=!had_heart,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run data modify entity @s data.loot set value {contents:[{name:{namespace:"luigis_mansion",id:"item/small_heart"}}]}
tag @s remove had_heart
execute if data entity @s data.loot unless data storage luigis_mansion:data current_state.current_data.portrait_battle run function luigis_mansion:other/drop_loot
data remove entity @s data.loot