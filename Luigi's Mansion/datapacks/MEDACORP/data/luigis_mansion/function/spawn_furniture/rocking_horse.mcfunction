summon minecraft:armor_stand ~ ~-1.43875 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.rocking_horse"},Tags:["furniture","rocking_horse","standing_furniture","immobile","this_entity"],Marker:1b,NoGravity:1b,data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"rocking_horse"},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/rocking_horse"}}},Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.43875 ~ ~ 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeWidth 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeHeight 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureDustUp 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureContentUp 10
scoreboard players set @e[tag=this_entity,limit=1] FurnitureGhostUp 10
function luigis_mansion:spawn_furniture/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture