summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.green_flying_fish"}',Invisible:1b,NoGravity:1b,Marker:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:oak_button",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:16,display:{color:1769242}}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["green_flying_fish","optional_ghost","ghost","flying_fish","vacuumable","this_entity"],DisabledSlots:2039583}
scoreboard players set @e[tag=this_entity,limit=1] WaitTime 0
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=this_entity,limit=1] store result score @s Move run data get storage luigis_mansion:data current_state.current_data.ghosts.green_flying_fish.speed
data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.loot set from storage luigis_mansion:data current_state.current_data.ghosts.green_flying_fish.loot
tag @e[tag=this_entity,limit=1] remove this_entity