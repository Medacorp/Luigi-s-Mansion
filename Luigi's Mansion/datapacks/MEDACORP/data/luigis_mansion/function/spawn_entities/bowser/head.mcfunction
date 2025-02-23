summon minecraft:marker ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.bowser"}',Tags:["ghost","visible","portrait_ghost","same_room_players_only","this_entity"],data:{entity:{namespace:"luigis_mansion",id:"bowser_head"},damage:{spit_ice:5}}}
summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.bowser"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/bowser","minecraft:unbreakable":{},"minecraft:custom_model_data":{flags:[B;0b],floats:[0f],strings:["default"]},"minecraft:custom_data":{model_data:{default:{components:{"minecraft:custom_model_data":{strings:["default"]}}},open_mouth:{components:{"minecraft:custom_model_data":{strings:["open_mouth"]}}},decapitated:{components:{"minecraft:custom_model_data":{strings:["decapitated"]}}}}}}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["model_piece","bowser_model","found_owner","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,tag=!model_piece,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=this_entity,tag=model_piece] GhostNr = @e[tag=this_entity,tag=!model_piece,limit=1] GhostNr
tag @e[tag=this_entity,tag=model_piece] remove this_entity
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity