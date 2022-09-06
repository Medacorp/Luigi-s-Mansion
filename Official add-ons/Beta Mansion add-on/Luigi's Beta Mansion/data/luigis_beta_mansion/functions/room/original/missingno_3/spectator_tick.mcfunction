execute unless entity @s[scores={Room=19}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 19
scoreboard players set @s PrevRoom 19

teleport @s[scores={HomeX=673}] ~1 ~ ~
teleport @s[scores={HomeX=681}] ~3 ~ ~
teleport @s[scores={HomeZ=38}] ~5 ~-91 ~36
teleport @s[scores={HomeZ=44}] ~ ~ ~-1

teleport @s[scores={HomeY=116}] ~ ~3 ~
teleport @s[scores={HomeY=109}] ~ ~-3 ~

tag @s add already_ticked