summon minecraft:armor_stand ~0.5 ~4 ~1.5 {CustomName:'{"type":"translatable","translate":"luigis_mansion:item.key"}',Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{luigis_mansion:{namespace:"luigis_mansion",id:"key",physics_offset:1.1d,pick_up_range:0.7f,variant:"null"},Unbreakable:1b,Damage:5,CustomModelData:15}}],NoGravity:1b,Marker:1b,Tags:["item","display","eternal","no_reflection","this_entity"],DisabledSlots:2039583}
scoreboard players set @e[tag=this_entity,limit=1] Room 0
function luigis_mansion:spawn_entities/setup/tags
execute if data storage luigis_mansion:data entity{sparkle:1b} run tag @e[tag=this_entity,limit=1] add sparkle
data remove storage luigis_mansion:data entity
tag @e[tag=this_entity,limit=1] remove this_entity