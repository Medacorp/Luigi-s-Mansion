execute unless entity @s[scores={Room=27}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 27
scoreboard players set @s PrevRoom 27

teleport @s[scores={HomeX=713}] ~-11 ~ ~-26
teleport @s[scores={HomeX=719}] ~15 ~ ~-5
teleport @s[scores={HomeZ=-30}] ~28 ~ ~15

teleport @s[scores={HomeY=34}] ~-14 ~96 ~13
teleport @s[scores={HomeY=27}] ~ ~-3 ~

tag @s add already_ticked