summon minecraft:armor_stand ~ ~-1.1875 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.billiards_ball"},Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["ball","affected_by_vacuum","affected_by_dust","affected_by_fire","affected_by_water","affected_by_ice","billiards_ball","white","same_room_players_only","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"billiards_ball"}},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/billiards_ball","minecraft:custom_model_data":{strings:["white"]}}}},NoGravity:1b,Marker:1b,Invisible:1b,DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] positioned as @s run teleport @s ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 3
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
scoreboard players set @e[tag=this_entity,limit=1] SpawnTime 0
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity