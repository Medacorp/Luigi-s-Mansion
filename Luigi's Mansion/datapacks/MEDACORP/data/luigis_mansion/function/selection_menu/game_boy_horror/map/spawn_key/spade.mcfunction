$summon minecraft:item_display ~$(x) ~5.45 ~$(z) {CustomName:{type:"translatable",translate:"luigis_mansion:item.key"},data:{entity:{namespace:"luigis_mansion",id:"item"},physics:{namespace:"luigis_mansion",id:"display"},item:{namespace:"luigis_mansion",id:"key"},physics_offset:1.1d,pick_up_range:0.7f,variant:"null"},item_display:"head",item:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/spade_key"}},Tags:["item","eternal","no_reflection","map_key","this_entity"]}
scoreboard players set @e[tag=this_entity,limit=1] Room 0
function luigis_mansion:spawn_entities/setup/tags
execute if data storage luigis_mansion:data entity{sparkle:1b} run data modify entity @e[tag=this_entity,limit=1] data.particle set value {chance:1,name:"minecraft:crit"}
execute if data storage luigis_mansion:data entity{sparkle:1b} run tag @e[tag=this_entity,limit=1] add map_focus_key
data remove storage luigis_mansion:data entity
tag @e[tag=this_entity,limit=1] remove this_entity