execute facing entity @a[tag=me,limit=1] feet run teleport @s ~ ~ ~ ~ ~10
playsound luigis_mansion:entity.nana.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s anchored eyes run summon minecraft:armor_stand ^ ^-0.5 ^0.3 {CustomName:'{"translate":"luigis_mansion:entity.shot_needle"}',Marker:1b,Invulnerable:1b,Tags:["shot_needle","new"],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:28}}],Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,DisabledSlots:2039583,Small:1b}
data modify entity @e[tag=shot_needle,tag=new,limit=1] ArmorItems[3].tag.luigis_mansion.damage set from entity @s ArmorItems[3].tag.luigis_mansion.damage
scoreboard players operation @e[tag=shot_needle,tag=new,limit=1] Owner = @s GhostNr
scoreboard players operation @e[tag=shot_needle,tag=new,limit=1] Room = @s Room
scoreboard players set @e[tag=shot_needle,tag=new,limit=1] Move 25
execute as @e[tag=shot_needle,tag=new,limit=1] at @s rotated as @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"nana"}}}]},limit=1] run teleport @s ~ ~ ~ ~ ~
execute as @e[tag=shot_needle,tag=new,limit=1] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
tag @e[tag=shot_needle,tag=new,limit=1] remove new