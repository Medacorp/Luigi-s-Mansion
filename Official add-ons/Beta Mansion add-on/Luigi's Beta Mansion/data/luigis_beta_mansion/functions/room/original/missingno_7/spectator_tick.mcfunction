execute unless entity @s[scores={Room=23}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 23
scoreboard players set @s PrevRoom 23

teleport @s[scores={HomeZ=-22,HomeX=686}] ~ ~ ~1
teleport @s[scores={HomeZ=-22,HomeX=687..695}] ~-25 ~ ~-51
teleport @s[scores={HomeZ=-22,HomeX=696..697}] ~ ~ ~1
teleport @s[scores={HomeZ=-16,HomeX=686}] ~ ~ ~1
teleport @s[scores={HomeZ=-16,HomeX=687..695}] ~-2 ~ ~40
teleport @s[scores={HomeZ=-16,HomeX=696..697}] ~ ~ ~1

teleport @s[scores={HomeY=18}] ~ ~-3 ~
teleport @s[scores={HomeY=25,HomeX=686..695}] ~-14 ~94 ~13
teleport @s[scores={HomeY=25,HomeX=696..697}] ~ ~-1 ~

tag @s add already_ticked