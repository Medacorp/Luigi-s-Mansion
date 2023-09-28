summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.shining_ghost"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Marker:0b,Invulnerable:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{namespace:"e3_demo",id:"shining_ghost",invisible:"minecraft:stone_button",visible:"minecraft:leather_chestplate",Unbreakable:1b,Damage:1,CustomModelData:17,display:{color:16750592}}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["optional_ghost","affected_by_vacuum","affected_by_fire","affected_by_water","affected_by_ice","ghost","vacuumable","this_entity"],DisabledSlots:2039583}
execute as @e[tag=this_entity,limit=1] store result score @s GhostNr run data get storage luigis_mansion:data unique_id.ghost
execute as @e[tag=this_entity,limit=1] store result storage luigis_mansion:data unique_id.ghost int 1 run scoreboard players add @s GhostNr 1
execute as @e[tag=this_entity,limit=1] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s HomeZ run data get entity @s Pos[2] 100
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.e3_demo.shining_ghost.speed
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data current_state.current_data.ghosts.e3_demo.shining_ghost.loot
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.damage set from storage luigis_mansion:data current_state.current_data.ghosts.e3_demo.shining_ghost.damage
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 2
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 7
execute if data storage luigis_mansion:data entity.training_room_score as @e[tag=this_entity,limit=1] store result score @s TrainingRoomScore run data get storage luigis_mansion:data entity.training_room_score
execute if data storage luigis_mansion:data entity.speed as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data entity.speed
execute if data storage luigis_mansion:data entity.loot run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data entity.loot
execute if data storage luigis_mansion:data entity.damage run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.damage set from storage luigis_mansion:data entity.damage
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data entity