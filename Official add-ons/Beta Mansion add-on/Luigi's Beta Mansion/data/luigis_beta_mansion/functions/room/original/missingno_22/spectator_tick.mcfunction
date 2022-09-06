execute unless entity @s[scores={Room=38}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 38
scoreboard players set @s PrevRoom 38

teleport @s[scores={HomeX=638}] ~14 ~91 ~20
teleport @s[scores={HomeX=648}] ~32 ~ ~7
teleport @s[scores={HomeZ=-30}] ~15 ~ ~3
teleport @s[scores={HomeZ=-61}] ~ ~ ~1

teleport @s[scores={HomeY=16}] ~ ~3 ~
teleport @s[scores={HomeY=9,HomeZ=-35..-31}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=-40..-36}] ~16 ~-3 ~20
teleport @s[scores={HomeY=9,HomeZ=-60..-41}] ~ ~1 ~

tag @s add already_ticked