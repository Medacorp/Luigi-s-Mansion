summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.burning_floor"}',Invisible:1b,NoGravity:1b,Marker:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:43}}],Pose:{Head:[0.0f,0.0f,0.0f]},Tags:["burning_floor","affected_by_water","static","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
scoreboard players operation @e[tag=this_entity,limit=1] Room = @s Room
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 12
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 0
tag @e[tag=this_entity,limit=1] remove this_entity