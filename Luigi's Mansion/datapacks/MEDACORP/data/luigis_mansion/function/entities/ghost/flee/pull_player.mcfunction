scoreboard players set #temp Move 20
function luigis_mansion:entities/ghost/flee/pull_player_step
scoreboard players remove @s TeleportDelay 1
execute positioned as @s[scores={TeleportDelay=0..}] run function luigis_mansion:entities/ghost/flee/pull_player