summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.pink_flying_fish"}',Invisible:1b,NoGravity:1b,CustomNameVisible:0b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:1,CustomModelData:62}}],Pose:{Head:[0.0f,0.0f,0.01f]},Tags:["pink_flying_fish","optional_ghost","ghost","this_entity"],DisabledSlots:2039583}
scoreboard players set @e[tag=this_entity,limit=1] WaitTime 0
execute as @e[tag=this_entity,limit=1] store result score @s HomeY run data get entity @s Pos[1] 100
tag @e[tag=this_entity,limit=1] remove this_entity
playsound luigis_mansion:entity.pink_flying_fish.spawn hostile @a ~ ~ ~ 1