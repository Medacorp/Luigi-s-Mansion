execute unless entity @s[scores={Room=36}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 36
scoreboard players set @s PrevRoom 36

teleport @s[scores={HomeX=653}] ~-1 ~91 ~19
teleport @s[scores={HomeX=663}] ~17 ~ ~6
teleport @s[scores={HomeZ=-2}] ~15 ~ ~8
teleport @s[scores={HomeZ=-28}] ~-15 ~ ~-3

teleport @s[scores={HomeY=9}] ~ ~1 ~
teleport @s[scores={HomeY=16}] ~ ~3 ~

tag @s add already_ticked