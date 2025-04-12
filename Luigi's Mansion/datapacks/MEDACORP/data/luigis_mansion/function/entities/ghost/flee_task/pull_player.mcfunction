scoreboard players operation #temp Move = @e[tag=me,limit=1] MoveFlee
function luigis_mansion:entities/ghost/flee_task/pull_player_step
scoreboard players remove @s TeleportDelay 1
execute positioned as @s[scores={TeleportDelay=-1}] run function luigis_mansion:entities/luigi/move/execute {execute:"positioned ~ ~ ~",teleport:"~ ~ ~"}
execute positioned as @s[scores={TeleportDelay=0..}] run function luigis_mansion:entities/ghost/flee_task/pull_player