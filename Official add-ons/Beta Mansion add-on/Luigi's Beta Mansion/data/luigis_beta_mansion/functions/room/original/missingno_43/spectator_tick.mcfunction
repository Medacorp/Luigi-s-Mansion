execute unless entity @s[scores={Room=59}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 59
scoreboard players set @s PrevRoom 59

teleport @s[scores={HomeX=732}] ~-1 ~ ~
teleport @s[scores={HomeZ=-21,HomeX=713}] ~ ~ ~1
teleport @s[scores={HomeZ=-21,HomeX=714..718}] ~ ~ ~-23
teleport @s[scores={HomeZ=-21,HomeX=719..720}] ~ ~ ~1
teleport @s[scores={HomeZ=-21,HomeX=721..731}] ~15 ~ ~-23
teleport @s[scores={HomeZ=-15,HomeX=713}] ~ ~ ~-1
teleport @s[scores={HomeZ=-15,HomeX=714..731}] ~9 ~ ~11

teleport @s[scores={HomeY=0}] ~ ~1 ~
teleport @s[scores={HomeY=7,HomeX=721..731}] ~15 ~3 ~-17
teleport @s[scores={HomeY=7,HomeX=719..720}] ~ ~-1 ~
teleport @s[scores={HomeY=7,HomeX=714..718}] ~ ~3 ~-13
teleport @s[scores={HomeY=7,HomeX=713}] ~ ~-1 ~

tag @s add already_ticked