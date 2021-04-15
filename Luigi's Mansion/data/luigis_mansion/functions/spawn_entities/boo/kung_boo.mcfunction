summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.kung_boo"}',Invisible:1b,NoGravity:1b,CustomNameVisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:50}}],HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:50}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:50}}],Pose:{RightArm:[-90.0f,90.0f,0.0f],LeftArm:[-90.0f,-90.0f,0.0f],Head:[0.0f,0.0f,0.0f]},Tags:["boo","kung_boo","ghost","laugh","no_y_sync","this_entity"]}
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
execute as @e[tag=this_entity,limit=1] store result score @s LastHealth run data get storage luigis_mansion:data current_state.current_data.boos.kung_boo.health
execute as @e[tag=this_entity,limit=1] if score #switch_boo_stats Selected matches 0 run scoreboard players set @s MaxHealth 4000
execute as @e[tag=this_entity,limit=1] if score #switch_boo_stats Selected matches 1 run scoreboard players set @s MaxHealth 5000
scoreboard players operation @e[tag=this_entity,limit=1] MaxHealth *= #multiply_health Selected
scoreboard players operation @e[tag=this_entity,limit=1] MaxHealth /= #100 Constants
scoreboard players operation @e[tag=this_entity,limit=1] MaxHealth += #extra_health Selected
execute as @e[tag=this_entity,limit=1] if score @s LastHealth matches -1 store result storage luigis_mansion:data current_state.current_data.boos.kung_boo.health int 1 run scoreboard players operation @s LastHealth = @s MaxHealth
execute as @e[tag=this_entity,limit=1] run scoreboard players operation @s Health = @s LastHealth
execute store result score @e[tag=this_entity,limit=1] Room run data get storage luigis_mansion:data current_state.current_data.boos.kung_boo.room
scoreboard players set @e[tag=this_entity,limit=1] Move 6
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
execute as @e[tag=this_entity,limit=1] run function #luigis_mansion:entities/boo/dark_room
tag @e[tag=this_entity,limit=1] remove this_entity
execute if entity @s[tag=hidden_boo] run function luigis_mansion:entities/boo/message