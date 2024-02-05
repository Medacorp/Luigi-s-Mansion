summon minecraft:armor_stand ~ ~-0.4 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.spike_ball"}',Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["spike_ball","affected_by_vacuum","affected_by_dust","affected_by_fire","affected_by_water","affected_by_ice","this_entity","ball","big","vacuumable"],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:8,luigis_mansion:{entity:{namespace:"luigis_mansion",id:"ball"}}}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-0.4 ~ facing ^ ^ ^2
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.luigis_mansion.damage set value {attack:10}
scoreboard players operation @e[tag=this_entity,limit=1] Owner = @s GhostNr
scoreboard players set @e[tag=this_entity,limit=1] ActionTime 0
scoreboard players set @e[tag=this_entity,limit=1] Move 100
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 15
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
tag @e[tag=this_entity,limit=1] remove this_entity