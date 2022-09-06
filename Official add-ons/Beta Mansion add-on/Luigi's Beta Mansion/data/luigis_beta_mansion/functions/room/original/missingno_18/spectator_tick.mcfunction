execute unless entity @s[scores={Room=34}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 34
scoreboard players set @s PrevRoom 34

teleport @s[scores={HomeX=738}] ~-20 ~ ~4
teleport @s[scores={HomeX=750}] ~-1 ~ ~
teleport @s[scores={HomeZ=54}] ~-1 ~ ~-6
teleport @s[scores={HomeZ=72}] ~ ~ ~-1

teleport @s[scores={HomeY=9}] ~ ~1 ~
teleport @s[scores={HomeY=16}] ~ ~3 ~

tag @s add already_ticked