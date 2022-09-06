execute unless entity @s[scores={Room=35}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 35
scoreboard players set @s PrevRoom 35

teleport @s[scores={HomeX=737}] ~-19 ~ ~-25
teleport @s[scores={HomeX=749}] ~-1 ~ ~
teleport @s[scores={HomeZ=49}] ~1 ~ ~6
teleport @s[scores={HomeZ=30}] ~6 ~ ~-13

teleport @s[scores={HomeY=9}] ~ ~1 ~
teleport @s[scores={HomeY=16}] ~ ~3 ~

tag @s add already_ticked