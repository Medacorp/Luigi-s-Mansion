summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.bootique"}',Invisible:1b,NoGravity:1b,Marker:0b,CustomNameVisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:99}}],HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:99}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:99}}],Pose:{RightArm:[0.0f,0.0f,90.0f],RightArm:[0.0f,0.0f,-90.0f],Head:[0.0f,0.0f,0.0f]},Tags:["boo","cannot_be_removed","bootique","ghost","appear","this_entity"]}
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
execute as @e[tag=this_entity,limit=1] store result score @s Health store result score @s LastHealth store result score @s MaxHealth run data get storage luigis_mansion:data current_state.current_data.boos[{name:"bootique"}].health
execute as @e[tag=this_entity,limit=1] store result score @s Room run data get storage luigis_mansion:data current_state.current_data.boos[{name:"bootique"}].room
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.boos[{name:"bootique"}].speed
execute if data storage luigis_mansion:data current_state.current_data.boos[{name:"bootique",loot_at_0:1b}] run tag @e[tag=this_entity,limit=1] add loot_at_0
scoreboard players set @e[tag=this_entity,limit=1] Sound 0
scoreboard players operation @e[tag=this_entity,limit=1] HomeX = @s HomeX
scoreboard players operation @e[tag=this_entity,limit=1] HomeY = @s HomeY
scoreboard players operation @e[tag=this_entity,limit=1] HomeZ = @s HomeZ
scoreboard players set @e[tag=this_entity,limit=1] HeartOffset -2
scoreboard players set @e[tag=this_entity,limit=1] SecondFleeDamage -1
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 5
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
execute if entity @s[tag=hidden_boo] run tag @e[tag=this_entity,limit=1] add say_message
tag @e[tag=this_entity,limit=1] remove this_entity