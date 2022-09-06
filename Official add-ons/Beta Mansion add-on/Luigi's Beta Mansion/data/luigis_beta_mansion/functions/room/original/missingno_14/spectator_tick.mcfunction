execute unless entity @s[scores={Room=30}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 30
scoreboard players set @s PrevRoom 30

teleport @s[scores={HomeX=690}] ~7 ~ ~18
teleport @s[scores={HomeX=680}] ~4 ~ ~33
teleport @s[scores={HomeZ=-56}] ~6 ~ ~35
teleport @s[scores={HomeZ=-87}] ~ ~ ~1

teleport @s[scores={HomeY=16,HomeZ=-75..-57}] ~-19 ~3 ~-16
teleport @s[scores={HomeY=16,HomeZ=-77..-76}] ~ ~-1 ~
teleport @s[scores={HomeY=16,HomeZ=-86..-78}] ~-40 ~3 ~4
teleport @s[scores={HomeY=9,HomeZ=-61..-57}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=-67..-62}] ~-8 ~-3 ~46
teleport @s[scores={HomeY=9,HomeZ=-86..-68}] ~ ~1 ~

tag @s add already_ticked