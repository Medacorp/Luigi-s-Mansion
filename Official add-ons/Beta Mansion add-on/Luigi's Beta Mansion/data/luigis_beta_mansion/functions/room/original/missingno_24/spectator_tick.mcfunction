execute unless entity @s[scores={Room=40}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 40
scoreboard players set @s PrevRoom 40

teleport @s[scores={HomeX=650}] ~-1 ~ ~
teleport @s[scores={HomeX=646}] ~1 ~ ~
teleport @s[scores={HomeZ=-1}] ~ ~ ~-1

teleport @s[scores={HomeY=91}] ~ ~1 ~
teleport @s[scores={HomeY=98,HomeZ=-9}] ~ ~3 ~

tag @s add already_ticked