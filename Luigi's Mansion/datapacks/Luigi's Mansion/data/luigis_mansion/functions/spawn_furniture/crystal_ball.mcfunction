summon minecraft:armor_stand ~ ~-1.2 ~ {CustomName:'{"translate":"luigis_mansion:entity.crystal_ball"}',Tags:["furniture","scan_ignore","this_entity"],Pose:{Head:[0.0f,0.0f,0.01f]},NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:38}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ ~
execute if data storage luigis_mansion:data furniture.loot run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data furniture.loot
execute if data storage luigis_mansion:data furniture.pose run data modify entity @e[tag=this_entity,limit=1] Pose set from storage luigis_mansion:data furniture.pose
data remove storage luigis_mansion:data furniture
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSound 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureRadius 7
scoreboard players set @e[tag=this_entity,limit=1] InteractionType 3
scoreboard players set @e[tag=this_entity,limit=1] FurnitureUp 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureVacuum 20
tag @e[tag=this_entity,limit=1] remove this_entity