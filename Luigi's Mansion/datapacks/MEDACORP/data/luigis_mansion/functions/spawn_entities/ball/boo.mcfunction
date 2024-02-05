summon minecraft:armor_stand ~ ~-1 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.boo_ball"}',Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["boo","ball","affected_by_vacuum","affected_by_dust","affected_by_fire","affected_by_water","affected_by_ice","vacuumable","this_entity"],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:4,luigis_mansion:{entity:{namespace:"luigis_mansion",id:"ball"}}}}],Invisible:1b,DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1 ~ facing entity @e[tag=!spectator,tag=same_room,limit=1]
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 5
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
playsound luigis_mansion:entity.boo.trap hostile @a[tag=same_room] ~ ~ ~ 1
