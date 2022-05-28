scoreboard players set @s VulnerableTime 2147483647
execute if entity @s[tag=!laugh] run scoreboard players set @e[tag=this_model,tag=madame_clairvoya_head,limit=1] AnimationProg 0
execute if entity @s[tag=!laugh] run playsound luigis_mansion:entity.madame_clairvoya.laugh hostile @a[tag=same_room] ~ ~ ~ 1
tag @s add laugh
execute unless entity @e[scores={Room=20},tag=door,type=minecraft:villager,tag=!blockade,limit=1] run tag @e[scores={Room=20},tag=door,type=minecraft:villager] add blockade