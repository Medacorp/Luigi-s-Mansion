scoreboard players operation @s TeleportDelay = @s TeleportDelaySetting
tag @s add vacuuming_fabric
$execute if entity @s[scores={TeleportDelayTimer=0}] facing $(facing) run function luigis_mansion:entities/player/vacuum_teleport {facing:"$(facing)",radius:$(radius)}