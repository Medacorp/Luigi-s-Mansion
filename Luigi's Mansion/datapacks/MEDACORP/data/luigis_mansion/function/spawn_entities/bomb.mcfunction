summon minecraft:item_display ~ ~1.45 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.bomb"},Tags:["bomb","affected_by_fire","affected_by_water","same_room_players_only","this_entity"],item_display:"head",data:{entity:{namespace:"luigis_mansion",id:"bomb"}},item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/bomb"}}}
execute as @e[tag=this_entity,limit=1] at @s facing entity @p[tag=!spectator] feet rotated ~ 0 run teleport @s ~ ~1.45 ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 8
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset -9
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity