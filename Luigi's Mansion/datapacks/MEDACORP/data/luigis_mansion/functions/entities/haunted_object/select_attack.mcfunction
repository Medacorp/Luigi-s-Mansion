function luigis_mansion:entities/ghost/set_target_to_attack
execute facing entity @e[tag=target,limit=1] feet run teleport @s ~ ~ ~ ~ 0
scoreboard players set @s TargetTask 1