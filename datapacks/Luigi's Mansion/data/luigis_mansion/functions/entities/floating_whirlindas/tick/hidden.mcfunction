execute if entity @s[scores={Dialog=..299},tag=!vanish] run function luigis_mansion:entities/floating_whirlindas/tick/dance_path/hidden
execute at @s[tag=!vanish] facing entity @e[tag=this_model,tag=floating_whirlindas_female,tag=main,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.7 run function luigis_mansion:entities/floating_whirlindas/lead

execute at @s[scores={Dialog=300..419},tag=!vanish] run function luigis_mansion:animations/floating_whirlindas/bow
execute at @s[scores={Dialog=..299},tag=!vanish] run function luigis_mansion:animations/floating_whirlindas/idle