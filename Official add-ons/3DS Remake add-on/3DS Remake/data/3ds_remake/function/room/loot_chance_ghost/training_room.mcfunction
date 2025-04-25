data modify storage luigis_mansion:data backup_loot set from entity @s data.loot
data remove entity @s data.loot
data modify entity @s data.loot set from storage luigis_mansion:data backup_loot.drop_at_0
execute unless data entity @s data.loot{works_in_lab:1b} run data remove entity @s data.loot
data remove storage luigis_mansion:data backup_loot.drop_at_0
execute if data entity @s data.loot.contents.luigis_mansion.small_heart run tag @s add had_heart
execute if data entity @s data.loot.contents.luigis_mansion.big_heart run tag @s add had_heart
execute if data entity @s data.loot run data modify entity @s data.loot.works_in_lab set value 1b
execute if data entity @s data.loot run function luigis_mansion:other/drop_loot
data remove entity @s data.loot
execute if entity @e[tag=killer,limit=1,scores={GhostCount=2..}] if entity @s[tag=!had_heart,tag=!portrait_ghost,nbt=!{data:{entity:{namespace:"luigis_mansion",id:"boo"}}}] run data modify entity @s data.loot.contents.luigis_mansion.small_heart set value [{type:"small"}]
tag @s remove had_heart
execute if data entity @s data.loot run data modify entity @s data.loot.works_in_lab set value 1b
execute if data entity @s data.loot run function luigis_mansion:other/drop_loot
data remove entity @s data.loot
data modify entity @s data.loot set from storage luigis_mansion:data backup_loot
data remove storage luigis_mansion:data backup_loot