execute unless entity @s[scores={Room=61}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 61
scoreboard players set @s PrevRoom 61

teleport @s[scores={HomeX=654}] ~-2 ~91 ~
teleport @s[scores={HomeX=685}] ~16 ~ ~
teleport @s[scores={HomeZ=-15}] ~ ~ ~-1
teleport @s[scores={HomeZ=-21}] ~ ~ ~1

teleport @s[scores={HomeY=0}] ~ ~1 ~
teleport @s[scores={HomeY=7,HomeX=654..663}] ~-16 ~3 ~-20
teleport @s[scores={HomeY=7,HomeX=664..665}] ~ ~-1 ~
teleport @s[scores={HomeY=7,HomeX=666..670}] ~14 ~3 ~-13
teleport @s[scores={HomeY=7,HomeX=671..672}] ~ ~-1 ~
teleport @s[scores={HomeY=7,HomeX=673..681}] ~8 ~3 ~-46
teleport @s[scores={HomeY=7,HomeX=682..683}] ~ ~-1 ~
teleport @s[scores={HomeY=7,HomeX=684}] ~13 ~3 ~-28

tag @s add already_ticked