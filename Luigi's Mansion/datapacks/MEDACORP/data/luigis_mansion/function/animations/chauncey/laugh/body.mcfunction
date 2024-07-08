scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[30.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] if data storage luigis_mansion:data ghost{tags:["has_equipment"]} run playsound luigis_mansion:entity.chauncey.rattle hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=6}] if data storage luigis_mansion:data ghost{tags:["has_equipment"]} run playsound luigis_mansion:entity.chauncey.rattle hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=11}] if data storage luigis_mansion:data ghost{tags:["has_equipment"]} run playsound luigis_mansion:entity.chauncey.rattle hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=16}] if data storage luigis_mansion:data ghost{tags:["has_equipment"]} run playsound luigis_mansion:entity.chauncey.rattle hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0