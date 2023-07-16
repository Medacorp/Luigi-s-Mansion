summon minecraft:armor_stand ^-0.125 ^ ^0.44 {CustomName:'{"translate":"luigis_mansion:furniture.door"}',Pose:{RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:11,CustomModelData:15,variants:{normal:{tag:{Damage:11}},burning:{tag:{Damage:12}},barricade:{tag:{Damage:13}},blockade:{tag:{Damage:14}},area_blockade:{tag:{Damage:14}}}}},{}],Tags:["door","pull","this_entity"],DisabledSlots:2039583}
summon minecraft:armor_stand ^-0.125 ^ ^0.44 {CustomName:'{"translate":"luigis_mansion:furniture.door"}',Pose:{RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],Head:[0.0f,0.0f,0.0f]},Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,HandItems:[{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:16,CustomModelData:0}}],Tags:["door","frame","affected_by_interact","affected_by_vacuum","affected_by_fire","affected_by_water","pull","static","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity] positioned as @s run teleport @s ~ ~ ~ ~ 0
scoreboard players set @e[tag=this_entity] Sound 0
scoreboard players set @e[tag=this_entity] AnimationProgress 0
execute as @e[tag=this_entity,tag=frame,limit=1] store result score @s Health store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.ghosts.fake_door.health
data modify entity @e[tag=this_entity,tag=frame,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data current_state.current_data.ghosts.fake_door.loot
data modify entity @e[tag=this_entity,tag=frame,limit=1] ArmorItems[3].tag.damage set from storage luigis_mansion:data current_state.current_data.ghosts.fake_door.damage
scoreboard players set @e[tag=this_entity,tag=frame,limit=1] EntitySizeWidth 10
scoreboard players set @e[tag=this_entity,tag=frame,limit=1] EntitySizeHeight 20
scoreboard players set @e[tag=this_entity,tag=frame,limit=1] EntityYOffset 10
tag @e[tag=this_entity] remove this_entity