execute unless entity @s[scores={Room=37}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 37
scoreboard players set @s PrevRoom 37

teleport @s[scores={HomeX=671}] ~2 ~ ~
teleport @s[scores={HomeX=644}] ~1 ~ ~
teleport @s[scores={HomeZ=56}] ~ ~ ~-1
teleport @s[scores={HomeZ=38,HomeX=645..652}] ~ ~ ~-2
teleport @s[scores={HomeZ=38,HomeX=653..654}] ~ ~ ~1
teleport @s[scores={HomeZ=38,HomeX=655..663}] ~-5 ~-91 ~-11
teleport @s[scores={HomeZ=38,HomeX=664..665}] ~ ~ ~1
teleport @s[scores={HomeZ=38,HomeX=666..670}] ~-4 ~-91 ~8

teleport @s[scores={HomeY=100}] ~ ~1 ~
teleport @s[scores={HomeY=107}] ~ ~-1 ~

tag @s add already_ticked