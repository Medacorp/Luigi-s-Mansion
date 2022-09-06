execute unless entity @s[scores={Room=62}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 62
scoreboard players set @s PrevRoom 62

teleport @s[scores={HomeX=687}] ~1 ~ ~
teleport @s[scores={HomeX=699}] ~15 ~ ~
teleport @s[scores={HomeZ=-62}] ~ ~ ~1
teleport @s[scores={HomeZ=-43}] ~13 ~ ~23

teleport @s[scores={HomeY=0}] ~ ~1 ~
teleport @s[scores={HomeY=7}] ~12 ~3 ~-7

tag @s add already_ticked