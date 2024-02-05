summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.boo"}',Invisible:1b,NoGravity:1b,Marker:0b,CustomNameVisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:145,luigis_mansion:{entity:{namespace:"luigis_mansion",id:"boo"},model_data:{default:{tag:{CustomModelData:145}},attacking:{tag:{CustomModelData:146}}}}}}],HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{invisible:"minecraft:stone_button",visible:"minecraft:diamond_pickaxe",Unbreakable:1b,Damage:2,CustomModelData:145,luigis_mansion:{mirror:{tag:{Damage:3}}}}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{invisible:"minecraft:stone_button",visible:"minecraft:diamond_pickaxe",Unbreakable:1b,Damage:3,CustomModelData:145,luigis_mansion:{mirror:{tag:{Damage:2}}}}}],Pose:{RightArm:[0.0f,0.0f,90.0f],RightArm:[0.0f,0.0f,-90.0f],Head:[0.0f,0.0f,0.0f]},Tags:["cannot_be_removed","affected_by_vacuum","affected_by_ice","ghost","appear","show_health","this_entity"]}
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
execute as @e[tag=this_entity,limit=1] store result score @s Health store result score @s LastHealth run scoreboard players set @s MaxHealth 1
scoreboard players set @e[tag=this_entity,limit=1] Move 0
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players operation @e[tag=this_entity,limit=1] HomeX = @s HomeX
scoreboard players operation @e[tag=this_entity,limit=1] HomeY = @s HomeY
scoreboard players operation @e[tag=this_entity,limit=1] HomeZ = @s HomeZ
scoreboard players set @e[tag=this_entity,limit=1] HeartOffset -2
scoreboard players set @e[tag=this_entity,limit=1] SecondFleeDamage -1
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 5
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
execute if entity @s[tag=hidden_boo] run tag @e[tag=this_entity,limit=1] add say_message
function luigis_mansion:spawn_entities/setup/default
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity