execute unless entity @s[scores={Room=72}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 72
scoreboard players set @s PrevRoom 72

teleport @s[scores={HomeX=688}] ~-7 ~91 ~39
teleport @s[scores={HomeX=703}] ~11 ~ ~26
teleport @s[scores={HomeZ=-56}] ~37 ~ ~41
teleport @s[scores={HomeZ=-80}] ~ ~ ~1

teleport @s[scores={HomeY=27}] ~6 ~-3 ~-7
teleport @s[scores={HomeY=34,HomeZ=-79..-69}] ~ ~-1 ~
teleport @s[scores={HomeY=34,HomeZ=-68..-57}] ~-5 ~96 ~39

tag @s add already_ticked