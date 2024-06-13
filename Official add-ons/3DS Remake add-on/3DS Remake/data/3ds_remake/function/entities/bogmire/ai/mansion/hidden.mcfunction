execute at @s[scores={Room=29}] run function 3ds_remake:entities/bogmire/ai/mansion/hidden/intro
execute at @s[scores={Room=74},tag=intro_done] run function 3ds_remake:entities/bogmire/ai/mansion/hidden/fight
execute at @s[scores={Room=74},tag=!intro_done] run function luigis_mansion:entities/bogmire/battle_intro/normal