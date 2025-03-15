summon minecraft:armor_stand ~ ~ ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.bomb"},Tags:["bomb","affected_by_fire","affected_by_water","move_up","boo","same_room_players_only","this_entity"],Invisible:1b,NoGravity:1b,Marker:1b,Pose:{Head:[0.0f,0.0f,0.01f]},data:{entity:{namespace:"luigis_mansion",id:"bomb"}},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/bomb"}}}}
execute as @e[tag=this_entity,limit=1] at @s facing entity @p[tag=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 8
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 5
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity
playsound luigis_mansion:entity.boo.trap hostile @a[tag=same_room] ~ ~ ~ 1