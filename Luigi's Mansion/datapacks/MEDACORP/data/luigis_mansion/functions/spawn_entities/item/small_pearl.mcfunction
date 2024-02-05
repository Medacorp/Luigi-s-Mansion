summon minecraft:armor_stand ~ ~-1.4 ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:item.small_pearl"}',Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,Silent:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"item"},item:{namespace:"luigis_mansion",id:"small_pearl"},physics_offset:1.1d,pick_up_range:0.7f,assign_rank:{namespace:"luigis_mansion",id:"null"},particle:{chance:1,name:"minecraft:crit"}},Unbreakable:1b,Damage:5,CustomModelData:3}}],Tags:["item","generic","affected_by_vacuum","this_entity"],DisabledSlots:2039583}
execute store result entity @e[tag=this_entity,limit=1] Rotation[0] float 1 run random value -180..179
execute store result entity @e[tag=this_entity,limit=1] Rotation[1] float 1 run random value -90..0
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 3
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
execute if data storage luigis_mansion:data entity.assign_rank run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.luigis_mansion.assign_rank.namespace set from storage luigis_mansion:data entity.assign_rank.namespace
execute if data storage luigis_mansion:data entity.assign_rank run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.luigis_mansion.assign_rank.id set from storage luigis_mansion:data entity.assign_rank.id
execute unless data storage luigis_mansion:data entity{silent:1b} run playsound luigis_mansion:item.small_pearl.spawn player @a[tag=same_room] ~ ~ ~ 1
function luigis_mansion:spawn_entities/setup/default
data remove storage luigis_mansion:data entity