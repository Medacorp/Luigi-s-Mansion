summon minecraft:armor_stand ~ ~-1.3 ~ {CustomName:'{"translate":"luigis_mansion:entity.gold_mouse"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:13,display:{color:16759040}}}],Pose:{Head:[0.01f,0.0f,0.0f]},Tags:["gold_mouse","ghost","optional_ghost","vacuumable","visible","mouse","this_entity"],DisabledSlots:2039583}
execute if block ~ ~ ~ minecraft:oak_button[face=floor] run tag @e[tag=this_entity,limit=1] add cheese
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.gold_mouse.speed
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data current_state.current_data.ghosts.gold_mouse.loot
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 7
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 14
tag @e[tag=this_entity,limit=1] remove this_entity
playsound luigis_mansion:music.solve_puzzle neutral @a ~ ~ ~ 1000