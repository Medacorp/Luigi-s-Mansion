execute unless entity @s[scores={Room=67}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 67
scoreboard players set @s PrevRoom 67

teleport @s[scores={HomeX=694,HomeZ=-75..-57}] ~-24 ~ ~-16
teleport @s[scores={HomeX=694,HomeZ=-77..-76}] ~1 ~ ~
teleport @s[scores={HomeX=694,HomeZ=-86..-78}] ~-45 ~ ~4
teleport @s[scores={HomeX=709}] ~5 ~ ~33
teleport @s[scores={HomeZ=-56}] ~3 ~ ~35
teleport @s[scores={HomeZ=-87}] ~ ~ ~1

teleport @s[scores={HomeY=18}] ~2 ~-3 ~18
teleport @s[scores={HomeY=25,HomeZ=-61..-57}] ~31 ~3 ~46
teleport @s[scores={HomeY=25,HomeZ=-63..-62}] ~ ~-1 ~
teleport @s[scores={HomeY=25,HomeZ=-86..-64}] ~-6 ~3 ~7

tag @s add already_ticked