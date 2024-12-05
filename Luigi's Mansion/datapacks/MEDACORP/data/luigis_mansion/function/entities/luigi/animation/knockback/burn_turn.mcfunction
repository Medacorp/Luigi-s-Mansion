execute unless score #mirrored Selected matches 1 run function luigis_mansion:entities/luigi/move/execute {teleport:"~ ~ ~ ~-9 ~"}
execute if score #mirrored Selected matches 1 run function luigis_mansion:entities/luigi/move/execute {teleport:"~ ~ ~ ~9 ~"}
scoreboard players remove @s TeleportDelay 1
execute if entity @s[scores={TeleportDelay=0..}] run function luigis_mansion:entities/luigi/animation/knockback/burn_turn