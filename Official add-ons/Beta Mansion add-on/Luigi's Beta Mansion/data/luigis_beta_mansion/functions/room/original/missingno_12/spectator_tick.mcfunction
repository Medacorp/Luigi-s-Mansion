execute unless entity @s[scores={Room=28}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 28
scoreboard players set @s PrevRoom 28

teleport @s[scores={HomeY=11..15,HomeX=719}] ~17 ~ ~
teleport @s[scores={HomeY=7..10,HomeX=719}] ~-1 ~ ~
teleport @s[scores={HomeY=1..6,HomeX=719}] ~17 ~ ~
teleport @s[scores={HomeY=11..15,HomeX=713}] ~-3 ~ ~-7
teleport @s[scores={HomeY=7..10,HomeX=713}] ~1 ~ ~
teleport @s[scores={HomeY=1..6,HomeX=713}] ~-15 ~ ~
teleport @s[scores={HomeY=11..15,HomeZ=-43}] ~ ~ ~10
teleport @s[scores={HomeY=7..10,HomeZ=-52}] ~ ~ ~-1
teleport @s[scores={HomeY=1..6,HomeZ=-43}] ~ ~ ~23
teleport @s[scores={HomeZ=-62}] ~ ~ ~1

teleport @s[scores={HomeY=16}] ~ ~3 ~8
teleport @s[scores={HomeY=9,HomeZ=-52..-44}] ~ ~-3 ~
teleport @s[scores={HomeY=7,HomeZ=-52..-44}] ~ ~3 ~
teleport @s[scores={HomeY=0}] ~ ~1 ~ 

tag @s add already_ticked