summon minecraft:armor_stand ~ ~ ~ {Rotation:[90.0f,0.0f],Tags:["rocking_horse","battle"],Pose:{Head:[0.0f,0.0f,0.01f]},NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:9}}],Invisible:1b,DisabledSlots:2039583}
execute if score #mansion_type Selected matches 1 run tag @e[distance=..0.1,tag=rocking_horse,limit=1] add big
data modify entity @s[tag=big] ArmorItems[3].tag.CustomModelData set value 10
execute if entity @s[scores={Wave=80},tag=left] run tag @e[distance=..0.1,tag=rocking_horse,limit=1] add zigzag_left
execute unless entity @s[scores={Wave=80}] if entity @s[tag=!left] run tag @e[distance=..0.1,tag=rocking_horse,limit=1] add zigzag_left