execute unless score #mirrored Selected matches 1 run teleport @s ^ ^ ^ ~-9 ~
execute if score #mirrored Selected matches 1 run teleport @s ^ ^ ^ ~9 ~
scoreboard players remove @s TeleportDelay 1
execute at @s[scores={TeleportDelay=0..}] run function luigis_mansion:entities/player/animation/knockback/burn_turn