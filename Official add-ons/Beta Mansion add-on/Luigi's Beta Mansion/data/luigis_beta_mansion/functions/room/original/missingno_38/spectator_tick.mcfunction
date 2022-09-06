execute unless entity @s[scores={Room=54}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 54
scoreboard players set @s PrevRoom 54

teleport @s[scores={HomeX=673}] ~1 ~ ~
teleport @s[scores={HomeX=681}] ~17 ~-90 ~25
teleport @s[scores={HomeZ=38}] ~ ~ ~-3
teleport @s[scores={HomeZ=44}] ~ ~ ~-1

teleport @s[scores={HomeY=125}] ~ ~-1 ~
teleport @s[scores={HomeY=118}] ~ ~-3 ~

tag @s add already_ticked