scoreboard players operation @s TeleportDelay = @s TeleportDelaySetting
tag @s add vacuuming_poster
$execute at @s[scores={TeleportDelayTimer=0}] facing $(facing) positioned $(facing) run function luigis_mansion:entities/luigi/vacuum/teleport {radius:$(radius),facing:"$(facing)"}