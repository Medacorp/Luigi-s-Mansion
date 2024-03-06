summon minecraft:armor_stand ~ ~-1 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:item.banana_peel"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:0,luigis_mansion:{entity:{namespace:"luigis_mansion",id:"banana_peel"}}}}],Invisible:1b,NoGravity:1b,Marker:1b,Tags:["vacuumable","affected_by_vacuum","banana_peel","eternal","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~-1 ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 5
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 6
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity