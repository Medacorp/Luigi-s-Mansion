execute unless entity @s[scores={Room=57}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 57
scoreboard players set @s PrevRoom 57

teleport @s[scores={HomeX=737}] ~-40 ~91 ~-10
teleport @s[scores={HomeX=756}] ~-1 ~ ~
teleport @s[scores={HomeZ=34}] ~3 ~ ~8
teleport @s[scores={HomeZ=1}] ~4 ~ ~-12

teleport @s[scores={HomeY=27,HomeX=738..742,HomeZ=29..33}] ~-14 ~-3 ~14
teleport @s[scores={HomeY=27,HomeX=743..744,HomeZ=29..33}] ~ ~1 ~
teleport @s[scores={HomeY=27,HomeX=745..755,HomeZ=29..33}] ~-7 ~-3 ~2
teleport @s[scores={HomeY=27,HomeX=738..755,HomeZ=27..28}] ~ ~1 ~
teleport @s[scores={HomeY=27,HomeX=738..755,HomeZ=9..26}] ~-1 ~-3 ~-9
teleport @s[scores={HomeY=27,HomeX=738..755,HomeZ=7..8}] ~ ~1 ~
teleport @s[scores={HomeY=27,HomeX=738..742,HomeZ=2..6}] ~-24 ~-3 ~-23
teleport @s[scores={HomeY=27,HomeX=743..744,HomeZ=2..6}] ~ ~1 ~
teleport @s[scores={HomeY=27,HomeX=745..755,HomeZ=2..6}] ~-9 ~-3 ~-27

teleport @s[scores={HomeY=34,HomeX=738..749}] ~-38 ~96 ~-10
teleport @s[scores={HomeY=34,HomeX=750..760}] ~ ~-1 ~

tag @s add already_ticked