summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.boo_b_hatch"}',Invisible:1b,NoGravity:1b,CustomNameVisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:50}}],HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:50}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:50}}],Pose:{RightArm:[-90.0f,90.0f,0.0f],LeftArm:[-90.0f,-90.0f,0.0f],Head:[0.0f,0.0f,0.0f]},Tags:["boo","boo_b_hatch","ghost","laugh","can_attack","appear","this_entity"]}
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
execute as @e[tag=this_entity,limit=1] store result score @s Health store result score @s LastHealth store result score @s MaxHealth run data get storage luigis_mansion:data current_state.current_data.boos[{name:"boo_b_hatch"}].health
execute as @e[tag=this_entity,limit=1] store result score @s Room run data get storage luigis_mansion:data current_state.current_data.boos[{name:"boo_b_hatch"}].room
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.boos[{name:"boo_b_hatch"}].speed
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players operation @e[tag=this_entity,limit=1] HomeX = @s HomeX
scoreboard players operation @e[tag=this_entity,limit=1] HomeY = @s HomeY
scoreboard players operation @e[tag=this_entity,limit=1] HomeZ = @s HomeZ
execute as @e[tag=this_entity,limit=1] run function #luigis_mansion:entities/boo/dark_room
execute if entity @s[tag=hidden_boo] run tag @e[tag=this_entity,limit=1] add say_message
tag @e[tag=this_entity,limit=1] remove this_entity