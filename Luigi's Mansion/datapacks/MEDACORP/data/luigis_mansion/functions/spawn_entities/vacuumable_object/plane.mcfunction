summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.plane"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:23}}],Pose:{Head:[0.0f,0.0f,1.01f]},Tags:["plane","affected_by_vacuum","vacuumable_object","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] run teleport @s ~ ~ ~ ~ ~
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeWidth 14
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeHeight 8
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 18
tag @e[tag=this_entity,limit=1] remove this_entity