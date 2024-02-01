scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=2,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.low_health_idle player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=2,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.low_health_idle player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=2},tag=!gooigi] Sound 20
scoreboard players set @s[scores={AnimationProgress=21}] AnimationProgress 1