execute unless entity @s[scores={Room=26}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 26
scoreboard players set @s PrevRoom 26

teleport @s[scores={HomeX=713,HomeY=19..24}] ~-5 ~ ~-33
teleport @s[scores={HomeX=713,HomeY=25..27}] ~1 ~ ~
teleport @s[scores={HomeX=713,HomeY=28..33}] ~-11 ~ ~-26
teleport @s[scores={HomeX=719,HomeY=19..24}] ~17 ~ ~-8
teleport @s[scores={HomeX=719,HomeY=25..27}] ~-1 ~ ~
teleport @s[scores={HomeX=719,HomeY=28..33}] ~15 ~ ~-5
teleport @s[scores={HomeZ=-44,HomeY=25..27}] ~ ~ ~-1
teleport @s[scores={HomeZ=-54}] ~ ~ ~1

teleport @s[scores={HomeY=34}] ~ ~-1 ~
teleport @s[scores={HomeY=27,HomeZ=-44..-43}] ~ ~-3 ~
teleport @s[scores={HomeY=25,HomeZ=-44..-43}] ~ ~3 ~
teleport @s[scores={HomeY=18}] ~ ~-3 ~-8

tag @s add already_ticked