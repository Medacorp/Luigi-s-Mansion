summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:furniture.room_clear_chest"}',Tags:["furniture","beta_room_clear_chest","standing_furniture","scan_ignore","this_entity"],Pose:{Head:[0.0f,0.01f,0.0f]},NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:-6}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ ~
execute if data storage luigis_mansion:data furniture.loot run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data furniture.loot
execute if data storage luigis_mansion:data furniture.scan_message run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.scan_message set from storage luigis_mansion:data furniture.scan_message
execute if data storage luigis_mansion:data furniture.pose run data modify entity @e[tag=this_entity,limit=1] Pose set from storage luigis_mansion:data furniture.pose
execute if data storage luigis_mansion:data furniture{open:1b} run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.CustomModelData set value -10
execute if data storage luigis_mansion:data furniture{open:1b} run tag @e[tag=this_entity,limit=1] add open
execute unless data storage luigis_mansion:data furniture{open:1b} run playsound luigis_mansion:block.room_clear_chest.spawn block @a ~ ~ ~ 2
scoreboard players set @e[tag=this_entity,limit=1] ActionTime 0
execute if data storage luigis_mansion:data furniture{open:1b} run scoreboard players set @e[tag=this_entity,limit=1] ActionTime -1
execute if data storage luigis_mansion:data furniture{can_hide_boo:1b} run tag @e[tag=this_entity,limit=1] add can_hide_boo
data remove storage luigis_mansion:data furniture
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeL 15
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeU 14
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeF 10
scoreboard players set @e[tag=this_entity,limit=1] InteractionType 3
scoreboard players set @e[tag=this_entity,limit=1] FurnitureUp 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSearch 0
tag @e[tag=this_entity,limit=1] remove this_entity