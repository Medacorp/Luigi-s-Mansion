execute unless entity @s[scores={Room=52}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 52
scoreboard players set @s PrevRoom 52

teleport @s[scores={HomeX=725}] ~-44 ~91 ~
teleport @s[scores={HomeZ=-16,HomeX=726..739}] ~-37 ~ ~-41
teleport @s[scores={HomeZ=-16,HomeX=740}] ~ ~ ~1
teleport @s[scores={HomeZ=-10,HomeX=726..739}] ~-42 ~91 ~2
teleport @s[scores={HomeZ=-10,HomeX=740}] ~ ~ ~-1

teleport @s[scores={HomeY=27,HomeX=726..739}] ~-31 ~-3 ~-46
teleport @s[scores={HomeY=27,HomeX=740}] ~ ~1 ~
teleport @s[scores={HomeY=34}] ~-42 ~96 ~

tag @s add already_ticked