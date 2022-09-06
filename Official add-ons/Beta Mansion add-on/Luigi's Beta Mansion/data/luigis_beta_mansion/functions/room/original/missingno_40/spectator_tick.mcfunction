execute unless entity @s[scores={Room=56}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 56
scoreboard players set @s PrevRoom 56

teleport @s[scores={HomeX=759}] ~-1 ~ ~
teleport @s[scores={HomeZ=41,HomeX=740}] ~ ~ ~1
teleport @s[scores={HomeZ=41,HomeX=741..758}] ~-3 ~ ~-8
teleport @s[scores={HomeZ=47,HomeX=740}] ~ ~ ~-1
teleport @s[scores={HomeZ=47,HomeX=741..758}] ~5 ~ ~9

teleport @s[scores={HomeY=27,HomeX=740}] ~ ~1 ~
teleport @s[scores={HomeY=27,HomeX=741..745}] ~-17 ~-3 ~8
teleport @s[scores={HomeY=27,HomeX=746..747}] ~ ~1 ~
teleport @s[scores={HomeY=27,HomeX=748..758}] ~-10 ~-3 ~-4
teleport @s[scores={HomeY=34,HomeX=740..752}] ~-41 ~96 ~-16
teleport @s[scores={HomeY=34,HomeX=753..759}] ~ ~-1 ~

tag @s add already_ticked