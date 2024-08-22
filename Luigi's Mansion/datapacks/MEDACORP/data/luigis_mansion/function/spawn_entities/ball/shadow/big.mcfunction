summon minecraft:armor_stand ~ ~-0.4 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.shadow_ball"}',Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["shadow","ball","affected_by_vacuum","affected_by_dust","affected_by_fire","affected_by_water","affected_by_ice","vacuumable","big","first_tick","same_room_players_only","this_entity"],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":4,"minecraft:custom_model_data":39,"minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"ball"}}}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-0.4 ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 15
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity