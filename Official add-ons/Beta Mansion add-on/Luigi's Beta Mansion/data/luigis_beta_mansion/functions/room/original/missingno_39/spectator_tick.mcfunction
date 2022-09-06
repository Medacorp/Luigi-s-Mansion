execute unless entity @s[scores={Room=55}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 55
scoreboard players set @s PrevRoom 55

teleport @s[scores={HomeX=724}] ~-43 ~91 ~-16
teleport @s[scores={HomeZ=47,HomeX=725..738}] ~-27 ~ ~11
teleport @s[scores={HomeZ=47,HomeX=739}] ~ ~ ~-1
teleport @s[scores={HomeZ=41,HomeX=725..738}] ~-41 ~91 ~-18
teleport @s[scores={HomeZ=41,HomeX=739}] ~ ~ ~1

teleport @s[scores={HomeY=27,HomeX=725..738}] ~-23 ~-3 ~9
teleport @s[scores={HomeY=27,HomeX=739}] ~ ~1 ~
teleport @s[scores={HomeY=34}] ~-41 ~96 ~-16

tag @s add already_ticked