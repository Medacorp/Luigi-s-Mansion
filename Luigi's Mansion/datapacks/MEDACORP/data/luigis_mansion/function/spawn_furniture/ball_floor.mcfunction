summon minecraft:armor_stand ~ ~0.01 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:furniture.ball_floor"}',Pose:{RightArm:[0.0f,0.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,HandItems:[{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/ball_floor","minecraft:unbreakable":{}}},{}],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:empty","minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"ball_floor"}}}}],Tags:["ball_floor","immobile","this_entity"],DisabledSlots:2039583}
execute store result entity @e[tag=this_entity,limit=1] Rotation[0] float 1 run random value -180..179
function luigis_mansion:spawn_furniture/setup/room
function luigis_mansion:spawn_furniture/setup/tags
function luigis_mansion:spawn_furniture/setup/debug_spawn
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data furniture