summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.boo"}',Invisible:1b,NoGravity:1b,Marker:0b,CustomNameVisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:99,variants:{default:{tag:{CustomModelData:99}},attacking:{tag:{CustomModelData:100}}}}}],HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{invisible:"minecraft:stone_button",visible:"minecraft:diamond_pickaxe",Unbreakable:1b,Damage:2,CustomModelData:99,mirror:{tag:{Damage:3}}}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{invisible:"minecraft:stone_button",visible:"minecraft:diamond_pickaxe",Unbreakable:1b,Damage:3,CustomModelData:99,mirror:{tag:{Damage:2}}}}],Pose:{RightArm:[0.0f,0.0f,90.0f],RightArm:[0.0f,0.0f,-90.0f],Head:[0.0f,0.0f,0.0f]},Tags:["boo","cannot_be_removed","affected_by_vacuum","affected_by_ice","ghost","appear","show_health","this_entity"]}
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data ghost_nr
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data ghost_nr int 1 run scoreboard players add @s GhostNr 1
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
data modify entity @e[tag=this_entity,limit=1] Tags append from storage luigis_mansion:data entity.id
data modify entity @e[tag=this_entity,limit=1] CustomName set from storage luigis_mansion:data entity.name
data modify entity @e[tag=this_entity,limit=1] Rotation set from storage luigis_mansion:data entity.rotation
execute if data storage luigis_mansion:data entity{can_attack:1b} run tag @e[tag=this_entity,limit=1] add can_attack
execute if data storage luigis_mansion:data entity{show_health:0b} run tag @e[tag=this_entity,limit=1] remove show_health
execute if data storage luigis_mansion:data entity{show_health:0b} run tag @e[tag=this_entity,limit=1] remove affected_by_vacuum
execute if data storage luigis_mansion:data entity{show_health:0b} run tag @e[tag=this_entity,limit=1] remove affected_by_ice
execute as @e[tag=this_entity,limit=1] store result score @s Health store result score @s LastHealth run data get storage luigis_mansion:data entity.health
execute as @e[tag=this_entity,limit=1] store result score @s Room run data get storage luigis_mansion:data entity.room
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data entity.speed
execute if data storage luigis_mansion:data entity.loot run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data entity.loot
execute if data storage luigis_mansion:data entity.damage run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.damage set from storage luigis_mansion:data entity.damage
data modify entity @e[tag=this_entity,limit=1] Tags append from storage luigis_mansion:data entity.other_data[]
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity