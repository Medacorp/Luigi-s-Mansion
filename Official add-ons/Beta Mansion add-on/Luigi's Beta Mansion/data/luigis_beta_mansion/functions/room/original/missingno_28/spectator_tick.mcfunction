execute unless entity @s[scores={Room=44}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 44
scoreboard players set @s PrevRoom 44

teleport @s[scores={HomeX=653}] ~1 ~ ~
teleport @s[scores={HomeX=663}] ~17 ~ ~6
teleport @s[scores={HomeZ=-2}] ~15 ~ ~8
teleport @s[scores={HomeZ=-28}] ~-15 ~ ~-3

teleport @s[scores={HomeY=18}] ~ ~-3 ~
teleport @s[scores={HomeY=25}] ~1 ~94 ~19

tag @s add already_ticked