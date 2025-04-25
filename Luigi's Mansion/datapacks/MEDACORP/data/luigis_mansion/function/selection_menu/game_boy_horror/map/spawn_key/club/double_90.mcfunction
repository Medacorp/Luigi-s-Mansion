summon minecraft:armor_stand ~-1.5 ~4 ~0.5 {CustomName:{type:"translatable",translate:"luigis_mansion:item.key"},Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,Silent:1b,data:{entity:{namespace:"luigis_mansion",id:"item"},physics:{namespace:"luigis_mansion",id:"display"},item:{namespace:"luigis_mansion",id:"key"},physics_offset:1.1d,pick_up_range:0.7f,variant:"null"},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/club_key"}}},NoGravity:1b,Marker:1b,Tags:["item","eternal","no_reflection","map_key","this_entity"],DisabledSlots:2039583}
scoreboard players set @e[tag=this_entity,limit=1] Room 0
function luigis_mansion:spawn_entities/setup/tags
execute if data storage luigis_mansion:data entity{sparkle:1b} run data modify entity @e[tag=this_entity,limit=1] data.particle set value {chance:1,name:"minecraft:crit"}
execute if data storage luigis_mansion:data entity{sparkle:1b} run tag @e[tag=this_entity,limit=1] add map_focus_key
data remove storage luigis_mansion:data entity
tag @e[tag=this_entity,limit=1] remove this_entity