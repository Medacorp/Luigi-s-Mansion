summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.shot_needle"}',Pose:{Head:[0.0f,0.0f,0.01f]},HasVisualFire:1b,Marker:1b,Invulnerable:1b,Tags:["shot_needle","this_entity"],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":4,"minecraft:custom_model_data":28,"minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"shot_needle"}}}}],Invisible:1b,DisabledSlots:2039583,Small:1b}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=this_entity,limit=1] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
scoreboard players set @e[tag=this_entity,limit=1] Move 25
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity