scoreboard players add @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute at @s run function luigis_mansion:old_animations/bowling_ghost/grab_ball

execute if entity @s[scores={ActionTime=10}] run playsound luigis_mansion:entity.bowling_ghost.grab_ball hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=10}] run summon minecraft:armor_stand ^ ^0.2 ^ {CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.bowling_ball"}',Tags:["bowling_ball","held"],ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:1}}],Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,NoGravity:1b,DisabledSlots:2039583}
execute if entity @s[scores={ActionTime=10}] positioned ^ ^0.2 ^ run data modify entity @e[tag=bowling_ball,distance=..0.1,limit=1] ArmorItems[3].tag.luigis_mansion.damage set from entity @s ArmorItems[3].tag.luigis_mansion.damage
execute if entity @s[scores={ActionTime=10}] positioned ^ ^0.2 ^ as @e[distance=..0.1,tag=bowling_ball,limit=1] unless entity @s[scores={GhostNr=1..}] positioned ^ ^-0.2 ^ run scoreboard players operation @s Owner = @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"bowling_ghost"}}}]},distance=..0.1,limit=1] GhostNr
execute if entity @s[scores={ActionTime=11..20}] if score #mirrored Selected matches 0 run function luigis_mansion:entities/bowling_ghost/ball_position/normal
execute if entity @s[scores={ActionTime=11..20}] if score #mirrored Selected matches 1 run function luigis_mansion:entities/bowling_ghost/ball_position/mirrored
tag @s[scores={ActionTime=20}] add grabbed_ball
scoreboard players set @s[scores={ActionTime=20..}] AnimationProgress 0
scoreboard players set @s[scores={ActionTime=20..}] Sound 2
scoreboard players set @s[scores={ActionTime=20..}] ActionTime 0
