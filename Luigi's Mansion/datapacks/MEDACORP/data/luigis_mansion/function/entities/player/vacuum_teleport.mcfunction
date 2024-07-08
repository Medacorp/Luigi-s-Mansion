$execute positioned as @s[distance=$(radius)..] rotated ~ 0 run teleport @s ^ ^ ^0.2
$execute positioned as @s[distance=..$(radius)] run teleport @s ~ ~ ~ ~ ~
scoreboard players remove @s TeleportDelay 1
$execute unless entity @s[distance=..$(radius)] if entity @s[scores={TeleportDelay=0..}] run function luigis_mansion:entities/player/vacuum_teleport {radius:$(radius)}