summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.rocking_horse"}',Tags:["rocking_horse","battle","big","this_entity"],Pose:{Head:[0.0f,0.0f,0.01f]},NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:10}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
execute if entity @s[scores={Wave=80},tag=left] run tag @e[tag=this_entity,limit=1] add zigzag_left
execute unless entity @s[scores={Wave=80}] if entity @s[tag=!left] run tag @e[tag=this_entity,limit=1] add zigzag_left
tag @e[tag=this_entity,limit=1] remove this_entity