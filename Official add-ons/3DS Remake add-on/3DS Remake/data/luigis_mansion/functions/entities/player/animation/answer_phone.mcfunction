scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=20,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.answer_phone.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=20,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.answer_phone.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=20,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.answer_phone.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=20,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.answer_phone.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s Sound 1
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 20