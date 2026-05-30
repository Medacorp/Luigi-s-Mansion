summon minecraft:armor_stand ~ ~-1.43875 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.wooden_stool_mounted_orange_stained_vase"},Marker:1b,NoGravity:1b,Invisible:1b,data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/wooden_stool_mounted_orange_stained_vase"}}},Tags:["furniture","immobile","standing_furniture","this_entity"],DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.43875 ~ ~ 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 12
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 25
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 25
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture