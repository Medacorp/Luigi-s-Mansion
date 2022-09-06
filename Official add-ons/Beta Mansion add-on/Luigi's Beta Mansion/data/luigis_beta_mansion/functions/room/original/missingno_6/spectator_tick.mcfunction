execute unless entity @s[scores={Room=22}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 22
scoreboard players set @s PrevRoom 22

teleport @s[scores={HomeX=668}] ~1 ~ ~
teleport @s[scores={HomeZ=11,HomeX=669..677}] ~-19 ~ ~6
teleport @s[scores={HomeZ=11,HomeX=678}] ~ ~ ~-1
teleport @s[scores={HomeZ=5,HomeX=669..677}] ~-15 ~ ~-8
teleport @s[scores={HomeZ=5,HomeX=678}] ~ ~ ~-1

teleport @s[scores={HomeY=18}] ~ ~-3 ~
teleport @s[scores={HomeY=25}] ~-14 ~94 ~13

tag @s add already_ticked