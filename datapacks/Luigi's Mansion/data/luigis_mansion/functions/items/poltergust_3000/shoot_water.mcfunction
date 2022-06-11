playsound luigis_mansion:item.poltergust_3000.shoot.water player @a[tag=same_room] ~ ~ ~ 1
summon minecraft:armor_stand ^ ^ ^1 {CustomName:'{"translate":"luigis_mansion:entity.shot_water"}',Pose:{Head:[0.0f,0.0f,0.01f]},Fire:32767s,Marker:1b,Invulnerable:1b,Tags:["shot_water","player_shot","interact","poltergust","water","new"],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:13}}],Invisible:1b,DisabledSlots:2039583,Small:1b}
scoreboard players operation @e[tag=shot_water,tag=new,limit=1] Room = @s Room
scoreboard players set @e[tag=shot_water,tag=new,limit=1] Move 25
scoreboard players operation @e[tag=shot_water,tag=new,limit=1] ID = @s ID
tag @s add me
execute as @e[tag=shot_water,tag=new,limit=1] at @s rotated as @a[tag=me,limit=1] run teleport @s ~ ~ ~ ~ ~
execute as @e[tag=shot_water,tag=new,limit=1] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
tag @s remove me
tag @e[tag=shot_water,tag=new,limit=1] remove new