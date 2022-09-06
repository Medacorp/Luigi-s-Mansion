execute unless entity @s[scores={Room=70}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 70
scoreboard players set @s PrevRoom 70

teleport @s[scores={HomeX=735}] ~-17 ~ ~4
teleport @s[scores={HomeX=747}] ~-1 ~ ~
teleport @s[scores={HomeZ=-20}] ~8 ~ ~20
teleport @s[scores={HomeZ=-38}] ~ ~ ~-6

teleport @s[scores={HomeY=18}] ~ ~-3 ~
teleport @s[scores={HomeY=25,HomeZ=-25..-21}] ~9 ~3 ~27
teleport @s[scores={HomeY=25,HomeZ=-27..-26}] ~ ~-1 ~
teleport @s[scores={HomeY=25,HomeZ=-32..-28}] ~13 ~3 ~17
teleport @s[scores={HomeY=25,HomeZ=-34..-33}] ~ ~-1 ~
teleport @s[scores={HomeY=25,HomeZ=-37..-35}] ~-2 ~3 ~-1

tag @s add already_ticked