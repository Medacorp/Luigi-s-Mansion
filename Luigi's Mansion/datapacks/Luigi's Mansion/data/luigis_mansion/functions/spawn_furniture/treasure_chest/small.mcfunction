summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:furniture.treasure_chest"}',Tags:["furniture","generic","immobile","chest","standing_furniture","scan_ignore","this_entity"],Pose:{Head:[0.0f,0.01f,0.0f]},NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:47}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ ~
execute if data storage luigis_mansion:data furniture.loot run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data furniture.loot
execute if data storage luigis_mansion:data furniture.dialog run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.dialog set from storage luigis_mansion:data furniture.dialog
execute if data storage luigis_mansion:data furniture.scan_message run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.scan_message set from storage luigis_mansion:data furniture.scan_message
execute if data storage luigis_mansion:data furniture.pose run data modify entity @e[tag=this_entity,limit=1] Pose set from storage luigis_mansion:data furniture.pose
execute if data storage luigis_mansion:data furniture{open:1b} run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.CustomModelData set value 51
execute if data storage luigis_mansion:data furniture{open:1b} run tag @e[tag=this_entity,limit=1] add open
scoreboard players set @e[tag=this_entity,limit=1] ActionTime 0
execute if data storage luigis_mansion:data furniture{open:1b} run scoreboard players set @e[tag=this_entity,limit=1] ActionTime -1
execute if data storage luigis_mansion:data furniture{can_hide_boo:1b} run tag @e[tag=this_entity,limit=1] add can_hide_boo
execute if data storage luigis_mansion:data furniture{searchable:["hand"]} run tag @e[tag=this_entity,limit=1] add searchable_by_hand
execute if data storage luigis_mansion:data furniture{searchable:["vacuum"]} run tag @e[tag=this_entity,limit=1] add searchable_by_vacuum
execute if data storage luigis_mansion:data furniture{searchable:["dust"]} run tag @e[tag=this_entity,limit=1] add searchable_by_dust
execute if data storage luigis_mansion:data furniture{searchable:["fire"]} run tag @e[tag=this_entity,limit=1] add searchable_by_fire
execute if data storage luigis_mansion:data furniture{searchable:["water"]} run tag @e[tag=this_entity,limit=1] add searchable_by_water
execute if data storage luigis_mansion:data furniture{searchable:["ice"]} run tag @e[tag=this_entity,limit=1] add searchable_by_ice
execute if data storage luigis_mansion:data furniture.elemental_source run tag @e[tag=this_entity,limit=1] add elemental_source
execute if data storage luigis_mansion:data furniture.elemental_source{type:"fire"} run tag @e[tag=this_entity,limit=1] add fire_elemental_source
execute if data storage luigis_mansion:data furniture.elemental_source{type:"water"} run tag @e[tag=this_entity,limit=1] add water_elemental_source
execute if data storage luigis_mansion:data furniture.elemental_source{type:"ice"} run tag @e[tag=this_entity,limit=1] add ice_elemental_source
execute if data storage luigis_mansion:data furniture.elemental_source{must_vacuum:1b} run tag @e[tag=this_entity,limit=1] add elemental_must_vacuum
execute if data storage luigis_mansion:data furniture.elemental_source{always_spawn:1b} run tag @e[tag=this_entity,limit=1] add elemental_always_spawn
execute if data storage luigis_mansion:data furniture.elemental_source{timer:1b} run tag @e[tag=this_entity,limit=1] add elemental_timer
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSound 0
execute if data storage luigis_mansion:data furniture.sound store result score @e[tag=this_entity,limit=1] FurnitureSound run data get storage luigis_mansion:data furniture.sound
data remove storage luigis_mansion:data furniture
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeL 18
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeU 13
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeF 8
scoreboard players set @e[tag=this_entity,limit=1] FurnitureUp 8
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElemenU 8
scoreboard players set @e[tag=this_entity,limit=1] FurnitureElemenF 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSearch 20
tag @e[tag=this_entity,limit=1] remove this_entity