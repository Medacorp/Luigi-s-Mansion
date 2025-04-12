$execute if entity @s[distance=$(radius)..] run function luigis_mansion:entities/luigi/move/execute {execute:"positioned as @s rotated ~ 0 positioned ^ ^ ^0.2 facing $(facing)",teleport:"~ ~ ~ ~ ~"}
$execute if entity @s[distance=..$(radius)] run function luigis_mansion:entities/luigi/move/execute {execute:"positioned as @s",teleport:"~ ~ ~ ~ ~"}
scoreboard players remove @s TeleportDelay 1
$execute unless entity @s[distance=..$(radius)] if entity @s[scores={TeleportDelay=0..}] run function luigis_mansion:entities/luigi/vacuum/teleport {radius:$(radius),facing:"$(facing)"}