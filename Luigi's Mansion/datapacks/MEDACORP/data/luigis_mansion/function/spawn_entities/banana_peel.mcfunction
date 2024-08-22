summon minecraft:armor_stand ~ ~-1 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:item.banana_peel"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":4,"minecraft:custom_model_data":0,"minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"banana_peel"}}}}],Invisible:1b,NoGravity:1b,Marker:1b,Tags:["affected_by_vacuum","banana_peel","same_room_players_only","this_entity"]}
teleport @e[tag=this_entity,limit=1] ~ ~-1 ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 5
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 6
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity