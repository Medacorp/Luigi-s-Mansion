playsound luigis_mansion:entity.miss_petunia.splash hostile @a[tag=same_room] ~ ~ ~ 1
summon minecraft:armor_stand ^ ^0.3 ^0.3 {CustomName:'{"translate":"luigis_mansion:entity.shot_water"}',Pose:{Head:[0.0f,0.0f,0.01f]},Fire:32767s,Marker:1b,Invulnerable:1b,Tags:["shot_water","new"],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:13}}],Invisible:1b,DisabledSlots:2039583,Small:1b}
scoreboard players set @e[tag=shot_water,tag=new,limit=1] Move 25
execute as @e[tag=shot_water,tag=new,limit=1] at @s rotated as @e[tag=miss_petunia,limit=1] run teleport @s ~ ~ ~ ~ ~
execute as @e[tag=shot_water,tag=new,limit=1] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
tag @e[tag=shot_water,tag=new,limit=1] remove new
