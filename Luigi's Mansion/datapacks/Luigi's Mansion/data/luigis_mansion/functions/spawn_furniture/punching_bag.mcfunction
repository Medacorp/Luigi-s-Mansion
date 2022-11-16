summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:furniture.punching_bag"}',Tags:["furniture","swinging","swinging_harms","hanging_furniture","punching_bag","scan_ignore","this_entity"],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:7}}],Pose:{Head:[0.0f,0.001f,0.0f]},NoGravity:1b,Marker:1b,Marker:1b,Invisible:1b,DisabledSlots:2039583}
execute if data storage luigis_mansion:data furniture.loot run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data furniture.loot
execute if data storage luigis_mansion:data furniture.dialog run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.dialog set from storage luigis_mansion:data furniture.dialog
execute if data storage luigis_mansion:data furniture.scan_message run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.scan_message set from storage luigis_mansion:data furniture.scan_message
execute if data storage luigis_mansion:data furniture{can_hide_boo:1b} run tag @e[tag=this_entity,limit=1] add can_hide_boo
execute if data storage luigis_mansion:data furniture{searchable:["hand"]} run tag @e[tag=this_entity,limit=1] add searchable_by_hand
execute if data storage luigis_mansion:data furniture{searchable:["vacuum"]} run tag @e[tag=this_entity,limit=1] add searchable_by_vacuum
execute if data storage luigis_mansion:data furniture{searchable:["dust"]} run tag @e[tag=this_entity,limit=1] add searchable_by_dust
execute if data storage luigis_mansion:data furniture{searchable:["fire"]} run tag @e[tag=this_entity,limit=1] add searchable_by_fire
execute if data storage luigis_mansion:data furniture{searchable:["water"]} run tag @e[tag=this_entity,limit=1] add searchable_by_water
execute if data storage luigis_mansion:data furniture{searchable:["ice"]} run tag @e[tag=this_entity,limit=1] add searchable_by_ice
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSound 0
execute if data storage luigis_mansion:data furniture.sound store result score @e[tag=this_entity,limit=1] FurnitureSound run data get storage luigis_mansion:data furniture.sound
data remove storage luigis_mansion:data furniture
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] ActionTime -1
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeW 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeH 60
scoreboard players set @e[tag=this_entity,limit=1] InteractionType -2
scoreboard players set @e[tag=this_entity,limit=1] FurnitureXOrigin 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureZOrigin 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureUp -10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSearch 100
tag @e[tag=this_entity,limit=1] remove this_entity