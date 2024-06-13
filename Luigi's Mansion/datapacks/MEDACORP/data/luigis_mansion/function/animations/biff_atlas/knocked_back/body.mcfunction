scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 19
scoreboard players reset #temp Time
execute if entity @s[scores={AnimationProgress=1}] run playsound luigis_mansion:entity.biff_atlas.hit hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=80}] run playsound luigis_mansion:entity.biff_atlas.sigh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=100}] run playsound luigis_mansion:entity.biff_atlas.pant hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={AnimationProgress=120..}] AnimationProgress 0