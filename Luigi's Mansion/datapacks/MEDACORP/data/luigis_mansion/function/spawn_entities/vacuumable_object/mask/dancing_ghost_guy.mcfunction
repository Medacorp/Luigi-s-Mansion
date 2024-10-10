summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.ghost_guy_mask"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/ghost_guy_mask","minecraft:unbreakable":{},"minecraft:custom_model_data":1,"minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"vacuumable_object"}}}}],Pose:{Head:[0.0f,0.01f,0.0f]},Tags:["ghost_guy_mask","affected_by_vacuum","vacuumable_object","same_room_players_only","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] run teleport @s ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 4
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 16
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity