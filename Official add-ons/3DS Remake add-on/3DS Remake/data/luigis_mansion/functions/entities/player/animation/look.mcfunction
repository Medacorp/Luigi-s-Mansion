scoreboard players add @s AnimationProgress 1
tag @s[scores={AnimationProgress=1}] add reset_rotation
execute if entity @s[scores={AnimationProgress=1,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.inspect.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.inspect.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=1,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.inspect.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.inspect.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=1},tag=!gooigi] Sound 20
tag @s[scores={AnimationProgress=2}] remove reset_rotation
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 20