summon minecraft:armor_stand ~ ~-1 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.bowling_ball"}',Tags:["bowling_ball","this_entity"],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":4,"minecraft:custom_model_data":1,"minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"bowling_ball"}}}}],Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,NoGravity:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1 ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 5
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity
