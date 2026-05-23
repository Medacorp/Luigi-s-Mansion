summon minecraft:armor_stand ~ ~-1.43875 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.table_mounted_knitting_bowl"},Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/table_mounted_knitting_bowl"}}},Tags:["furniture","immobile","standing_furniture","this_entity"],DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.43875 ~ ~ 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 16
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 20
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 20
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture