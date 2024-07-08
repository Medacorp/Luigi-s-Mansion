scoreboard players operation @s TeleportDelay = @s TeleportDelaySetting
tag @s add vacuuming_fabric
$execute at @s[scores={TeleportDelayTimer=0}] facing $(facing) positioned $(facing) run function luigis_mansion:entities/player/vacuum_teleport {radius:$(radius)}