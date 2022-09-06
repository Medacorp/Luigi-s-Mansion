execute unless entity @s[scores={Room=41}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 41
scoreboard players set @s PrevRoom 41

teleport @s[scores={HomeX=638}] ~1 ~ ~
teleport @s[scores={HomeX=648}] ~32 ~ ~7
teleport @s[scores={HomeZ=-30}] ~15 ~ ~3
teleport @s[scores={HomeZ=-61}] ~ ~ ~1

teleport @s[scores={HomeY=25}] ~16 ~94 ~20
teleport @s[scores={HomeY=18}] ~ ~-3 ~

tag @s add already_ticked