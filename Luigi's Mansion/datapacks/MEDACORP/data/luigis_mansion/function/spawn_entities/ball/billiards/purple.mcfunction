summon minecraft:item_display ~ ~0.3625 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.billiards_ball"},item_display:"head",Tags:["ball","affected_by_vacuum","affected_by_dust","affected_by_fire","affected_by_water","affected_by_ice","billiards_ball","same_room_players_only","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"billiards_ball"}},item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/billiards_ball","minecraft:custom_model_data":{strings:["purple"]}}}}
teleport @e[tag=this_entity,limit=1] ~ ~0.3625 ~ ~ ~
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 3
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 0
scoreboard players set @e[tag=this_entity,limit=1] SpawnTime 0
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity