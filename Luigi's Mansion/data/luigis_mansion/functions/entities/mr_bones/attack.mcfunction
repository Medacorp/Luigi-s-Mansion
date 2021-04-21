scoreboard players add @s[scores={ActionTime=1..60}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute if entity @s[scores={ActionTime=1..40}] facing entity @p[gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[scores={ActionTime=1..60}] run function luigis_mansion:animations/mr_bones/attack
execute if entity @s[scores={ActionTime=1}] if score #mirrored Selected matches 0 run data merge entity @s {HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:55}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:53}}]}
execute if entity @s[scores={ActionTime=1}] if score #mirrored Selected matches 1 run data merge entity @s {HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:53}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:55}}]}

execute if entity @s[scores={ActionTime=40}] run playsound luigis_mansion:entity.mr_bones.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=40}] run data merge entity @s {HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:53}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:53}}]}
execute if entity @s[scores={ActionTime=40}] run summon minecraft:armor_stand ~ ~0.4 ~ {CustomName:'{"translate":"luigis_mansion:entity.bone"}',NoGravity:1b,Tags:["bone"],Pose:{Head:[0.0f,0.0f,0.01f]},ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:6}}],Invisible:1b,DisabledSlots:2039583,Small:1b}
execute if entity @s[scores={ActionTime=40}] positioned ~ ~0.4 ~ as @e[distance=..0.1,tag=bone] unless entity @s[scores={GhostNr=1..}] positioned ~ ~-0.4 ~ run scoreboard players operation @s GhostNr = @e[tag=mr_bones,distance=..0.1] GhostNr
execute if entity @s[scores={ActionTime=40}] positioned ~ ~0.4 ~ as @e[distance=..0.1,tag=bone] run teleport @s ~ ~ ~ ~ ~

execute at @s[scores={ActionTime=61}] run function luigis_mansion:animations/mr_bones/idle
execute if entity @s[scores={ActionTime=61}] run scoreboard players operation #temp GhostNr = @s GhostNr
execute if entity @s[scores={ActionTime=61}] as @e[tag=bone] if score @s GhostNr = #temp GhostNr run tag @e[distance=..0.1] add wait
tag @s[scores={ActionTime=61},tag=!wait,tag=!laugh] add complain
tag @s[scores={ActionTime=61},tag=!wait] remove attack
scoreboard players set @s[scores={ActionTime=61},tag=wait] ActionTime 60
scoreboard players set @s[scores={ActionTime=61},tag=!wait] AnimationProg 0
scoreboard players set @s[scores={ActionTime=61},tag=!wait] ActionTime 0
scoreboard players reset #temp GhostNr
tag @s remove wait
