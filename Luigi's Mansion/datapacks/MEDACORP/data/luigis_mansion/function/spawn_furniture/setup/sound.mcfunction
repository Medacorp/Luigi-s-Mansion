data modify entity @e[tag=this_entity,limit=1] data.shake_sound set value {namespace:"luigis_mansion",id:"heavy_generic"}
execute if data storage luigis_mansion:data furniture.sound.namespace run data modify entity @e[tag=this_entity,limit=1] data.shake_sound.namespace set from storage luigis_mansion:data furniture.sound.namespace
execute if data storage luigis_mansion:data furniture.sound.id run data modify entity @e[tag=this_entity,limit=1] data.shake_sound.id set from storage luigis_mansion:data furniture.sound.id
scoreboard players set @e[tag=this_entity,limit=1] Sound 0