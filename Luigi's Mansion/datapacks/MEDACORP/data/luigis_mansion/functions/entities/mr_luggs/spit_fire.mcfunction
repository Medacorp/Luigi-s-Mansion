playsound luigis_mansion:entity.mr_luggs.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute anchored eyes run summon minecraft:armor_stand ^ ^ ^0.3 {CustomName:'{"translate":"luigis_mansion:entity.shot_fire"}',Pose:{Head:[0.0f,0.0f,0.01f]},HasVisualFire:1b,Marker:1b,Invulnerable:1b,Tags:["shot_fire","new"],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:12}}],Invisible:1b,DisabledSlots:2039583,Small:1b}
data modify entity @e[tag=shot_fire,tag=new,limit=1] ArmorItems[3].tag.luigis_mansion.damage set from entity @s ArmorItems[3].tag.luigis_mansion.damage
scoreboard players operation @e[tag=shot_fire,tag=new,limit=1] Owner = @s GhostNr
scoreboard players operation @e[tag=shot_fire,tag=new,limit=1] Room = @s Room
scoreboard players set @e[tag=shot_fire,tag=new,limit=1] Move 10
execute if entity @s[scores={Dialog=441..481}] run scoreboard players set @e[tag=shot_fire,tag=new,limit=1] Move 15
execute if entity @s[scores={Dialog=541..601}] run scoreboard players set @e[tag=shot_fire,tag=new,limit=1] Move 20
execute if entity @s[scores={Dialog=681..761}] run scoreboard players set @e[tag=shot_fire,tag=new,limit=1] Move 25
execute as @e[tag=shot_fire,tag=new,limit=1] at @s rotated as @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"mr_luggs"}}}]},limit=1] run teleport @s ~ ~ ~ ~ ~
execute as @e[tag=shot_fire,tag=new,limit=1] run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
tag @e[tag=shot_fire,tag=new,limit=1] remove new
