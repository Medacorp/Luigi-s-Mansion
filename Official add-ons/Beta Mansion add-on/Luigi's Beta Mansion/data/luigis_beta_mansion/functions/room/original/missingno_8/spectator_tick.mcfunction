execute unless entity @s[scores={Room=24}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 24
scoreboard players set @s PrevRoom 24

teleport @s[scores={HomeY=-22,HomeX=697}] ~ ~ ~1
teleport @s[scores={HomeZ=-22,HomeX=698..711}] ~-3 ~ ~-35
teleport @s[scores={HomeZ=-22,HomeX=712}] ~ ~ ~1
teleport @s[scores={HomeY=-16,HomeX=697}] ~ ~ ~-1
teleport @s[scores={HomeZ=-16,HomeX=698..711}] ~16 ~ ~35
teleport @s[scores={HomeZ=-16,HomeX=712}] ~ ~ ~-1

teleport @s[scores={HomeY=18}] ~ ~-3 ~
teleport @s[scores={HomeY=25,HomeX=697}] ~ ~-1 ~
teleport @s[scores={HomeY=25,HomeX=698..711}] ~-14 ~94 ~13
teleport @s[scores={HomeY=25,HomeX=712}] ~ ~-1 ~

tag @s add already_ticked