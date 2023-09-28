scoreboard players set @s VulnerableTime 2147483647
scoreboard players set @s[tag=!laugh] AnimationProgress 0
execute if entity @s[tag=!laugh] run playsound luigis_mansion:entity.madame_clairvoya.laugh hostile @a[tag=same_room] ~ ~ ~ 1
tag @s add laugh
execute if entity @e[scores={Room=20},tag=door,tag=frame,tag=!blockade,limit=1] run tag @e[scores={Room=20},tag=door,tag=frame] add blockade