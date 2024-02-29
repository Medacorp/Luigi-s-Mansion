execute at @s[scores={Room=29}] run function luigis_mansion:entities/bogmire/ai/mansion/normal/intro
execute at @s[scores={Room=74},tag=intro_done] run function luigis_mansion:entities/bogmire/ai/mansion/normal/fight
execute at @s[scores={Room=74},tag=!intro_done] run function luigis_mansion:entities/bogmire/battle_intro/normal