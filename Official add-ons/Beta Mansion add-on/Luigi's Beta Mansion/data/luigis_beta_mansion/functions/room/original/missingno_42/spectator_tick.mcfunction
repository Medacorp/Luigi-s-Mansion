execute unless entity @s[scores={Room=58}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 58
scoreboard players set @s PrevRoom 58

teleport @s[scores={HomeX=735}] ~-17 ~ ~
teleport @s[scores={HomeX=747}] ~-1 ~ ~
teleport @s[scores={HomeZ=-62}] ~ ~ ~1
teleport @s[scores={HomeZ=-43}] ~-15 ~ ~23

teleport @s[scores={HomeY=0}] ~ ~1 ~
teleport @s[scores={HomeY=7}] ~ ~3 ~

tag @s add already_ticked