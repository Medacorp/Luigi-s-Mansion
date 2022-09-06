summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_mansion:entity.vase"}',Pose:{Head:[0.01f,0.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:4}}],Tags:["furniture","rolling","this_entity","scan_ignore","searchable_by_hand","searchable_by_vacuum"],DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ ~
execute if data storage luigis_mansion:data give_loot run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data give_loot
data remove storage luigis_mansion:data give_loot
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] PoltergustSound 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSound 6
scoreboard players set @e[tag=this_entity,limit=1] FurnitureRadius 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureUp 6
scoreboard players set @e[tag=this_entity,limit=1] FurnitureVacuum 41
tag @e[tag=this_entity,limit=1] remove this_entity