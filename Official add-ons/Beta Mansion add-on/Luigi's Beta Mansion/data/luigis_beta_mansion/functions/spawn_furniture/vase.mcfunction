summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"translate":"luigis_beta_mansion:furniture.vase"}',Pose:{Head:[0.0f,0.01f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:-1}}],Tags:["furniture","rolling","standing_furniture","this_entity"],DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.4 ~ ~ 0
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players set @e[tag=this_entity,limit=1] ActionTime -1
scoreboard players set @e[tag=this_entity,limit=1] PoltergustSound 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 6
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 9
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 6
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentForward 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSearch 41
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture