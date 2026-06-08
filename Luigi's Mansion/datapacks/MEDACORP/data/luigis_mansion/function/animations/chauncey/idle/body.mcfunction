scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
execute if entity @s[scores={AnimationProgress=5}] if data storage luigis_mansion:data ghost{tags:["has_equipment"]} run playsound luigis_mansion:entity.chauncey.quiet_rattle hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0