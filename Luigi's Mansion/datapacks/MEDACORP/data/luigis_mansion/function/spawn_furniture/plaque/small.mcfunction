summon minecraft:armor_stand ~ ~-1.43875 ~ {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.plaque"},Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,data:{entity:{namespace:"luigis_mansion",id:"furniture"},furniture_type:"generic"},equipment:{head:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:item_model":"luigis_mansion:furniture/plaque","minecraft:custom_model_data":{flags:[0b]}}}},Tags:["furniture","immobile","this_entity"],DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~-1.43875 ~ ~ 0
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeLeft 8
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeUp 4
scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeForward 2
function luigis_mansion:spawn_furniture/setup/default
execute rotated ~ 0 run summon minecraft:text_display ^ ^-0.13 ^0.1 {CustomName:{type:"translatable",translate:"luigis_mansion:furniture.plaque"},Tags:["plaque_text","no_reflection","this_entity"],background:0,text:{type:"text",text:""}}
execute rotated ~ 0 run teleport @e[tag=plaque_text,tag=this_entity,limit=1] ^ ^-0.13 ^0.1 ~ 0
execute as @e[tag=plaque_text,tag=this_entity,limit=1] run scoreboard players operation @s Room = @e[tag=!plaque_text,tag=this_entity,limit=1] Room
data modify entity @e[tag=plaque_text,tag=this_entity,limit=1] text set from storage luigis_mansion:data furniture.plaque_text
tag @e[tag=this_entity] remove this_entity
data remove storage luigis_mansion:data furniture