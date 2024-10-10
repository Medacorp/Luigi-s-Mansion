summon minecraft:armor_stand ~ ~-1.1 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:item.big_pearl"}',Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,Silent:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"item"},physics:{namespace:"luigis_mansion",id:"generic"},item:{namespace:"luigis_mansion",id:"big_pearl"},physics_offset:1.1d,pick_up_range:0.7f,assign_rank:{namespace:"luigis_mansion",id:"null"},particle:{chance:1,name:"minecraft:crit"}},"minecraft:unbreakable":{},"minecraft:item_model":"luigis_mansion:entity/big_pearl"}}],Tags:["item","affected_by_vacuum","same_room_players_only","this_entity"],DisabledSlots:2039583}
execute store result entity @e[tag=this_entity,limit=1] Rotation[0] float 1 run random value -180..179
execute store result entity @e[tag=this_entity,limit=1] Rotation[1] float 1 run random value -90..0
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 5
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 15
execute if data storage luigis_mansion:data entity.assign_rank run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].components."minecraft:custom_data".assign_rank.namespace set from storage luigis_mansion:data entity.assign_rank.namespace
execute if data storage luigis_mansion:data entity.assign_rank run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].components."minecraft:custom_data".assign_rank.id set from storage luigis_mansion:data entity.assign_rank.id
execute unless data storage luigis_mansion:data entity{silent:1b} run playsound luigis_mansion:item.big_pearl.spawn player @a[tag=same_room] ~ ~ ~ 1
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity