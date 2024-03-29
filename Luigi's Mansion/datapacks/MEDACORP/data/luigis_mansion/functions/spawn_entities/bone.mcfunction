summon minecraft:armor_stand ~ ~0.4 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.bone"}',NoGravity:1b,Marker:1b,HasVisualFire:1b,Tags:["bone","this_entity"],Pose:{Head:[0.0f,0.0f,0.01f]},ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:6,luigis_mansion:{entity:{namespace:"luigis_mansion",id:"bone"}}}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~0.4 ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 2
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 6
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity