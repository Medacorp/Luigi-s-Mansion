scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players add @s AnimationRotationX 190
execute if entity @s[scores={AnimationProgress=1}] run playsound luigis_mansion:entity.biff_atlas.hit hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=80}] run playsound luigis_mansion:entity.biff_atlas.sigh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=100}] run playsound luigis_mansion:entity.biff_atlas.pant hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={AnimationProgress=120..}] AnimationProgress 0