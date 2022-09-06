execute unless entity @s[scores={Room=32}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 32
scoreboard players set @s PrevRoom 32

teleport @s[scores={HomeX=735}] ~-17 ~ ~
teleport @s[scores={HomeX=747}] ~-1 ~ ~
teleport @s[scores={HomeZ=-43}] ~ ~ ~6
teleport @s[scores={HomeZ=-62}] ~ ~ ~1

teleport @s[scores={HomeY=9}] ~ ~-3 ~
teleport @s[scores={HomeY=16}] ~ ~3 ~

tag @s add already_ticked