summon minecraft:item_display ~ ~0.45 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:entity.boo_ball"},item_display:"head",Tags:["boo","ball","affected_by_vacuum","affected_by_dust","affected_by_fire","affected_by_water","affected_by_ice","vacuumable","same_room_players_only","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"ball"}},item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/boo_ball"}}}
teleport @e[tag=this_entity,limit=1] ~ ~0.45 ~ facing entity @e[tag=!spectator,tag=same_room,limit=1]
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 5
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 0
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity
playsound luigis_mansion:entity.boo.trap hostile @a[tag=same_room] ~ ~ ~ 1
