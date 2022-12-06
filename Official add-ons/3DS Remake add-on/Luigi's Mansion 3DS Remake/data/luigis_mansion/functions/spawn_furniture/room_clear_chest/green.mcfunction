summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:furniture.room_clear_chest"}',Tags:["furniture","room_clear_chest","immobile","standing_furniture","sparkles","scan_ignore","cannot_search_when_open","face_me","this_entity"],Pose:{Head:[0.0f,0.01f,0.0f]},NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:27}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ ~
execute if data storage luigis_mansion:data furniture.loot run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data furniture.loot
execute if data storage luigis_mansion:data furniture.dialog run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.dialog set from storage luigis_mansion:data furniture.dialog
execute if data storage luigis_mansion:data furniture.pose run data modify entity @e[tag=this_entity,limit=1] Pose set from storage luigis_mansion:data furniture.pose
execute if data storage luigis_mansion:data furniture{open:1b} run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.CustomModelData set value 31
execute if data storage luigis_mansion:data furniture{open:1b} run tag @e[tag=this_entity,limit=1] add open
execute unless data storage luigis_mansion:data furniture{open:1b} run playsound luigis_mansion:furniture.room_clear_chest.spawn block @a ~ ~ ~ 2
scoreboard players set @e[tag=this_entity,limit=1] ActionTime 0
execute if data storage luigis_mansion:data furniture{open:1b} run scoreboard players set @e[tag=this_entity,limit=1] ActionTime -1
execute if data storage luigis_mansion:data furniture{can_hide_boo:1b} run tag @e[tag=this_entity,limit=1] add can_hide_boo
execute if data storage luigis_mansion:data furniture{searchable:["hand"]} run tag @e[tag=this_entity,limit=1] add searchable_by_hand
execute if data storage luigis_mansion:data furniture{searchable:["vacuum"]} run tag @e[tag=this_entity,limit=1] add searchable_by_vacuum
execute if data storage luigis_mansion:data furniture{searchable:["dust"]} run tag @e[tag=this_entity,limit=1] add searchable_by_dust
execute if data storage luigis_mansion:data furniture{searchable:["fire"]} run tag @e[tag=this_entity,limit=1] add searchable_by_fire
execute if data storage luigis_mansion:data furniture{searchable:["water"]} run tag @e[tag=this_entity,limit=1] add searchable_by_water
execute if data storage luigis_mansion:data furniture{searchable:["ice"]} run tag @e[tag=this_entity,limit=1] add searchable_by_ice
data remove storage luigis_mansion:data furniture
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeL 16
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeU 12
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeF 9
scoreboard players set @e[tag=this_entity,limit=1] InteractionType 5
scoreboard players set @e[tag=this_entity,limit=1] FurnitureUp 7
tag @e[tag=this_entity,limit=1] remove this_entity