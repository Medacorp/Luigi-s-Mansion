execute unless entity @s[scores={Room=51}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 51
scoreboard players set @s PrevRoom 51

teleport @s[scores={HomeX=760}] ~-1 ~ ~
teleport @s[scores={HomeZ=-16,HomeX=749..759}] ~-15 ~ ~-20
teleport @s[scores={HomeZ=-16,HomeX=747..748}] ~ ~ ~1
teleport @s[scores={HomeZ=-16,HomeX=742..746}] ~-28 ~ ~-15
teleport @s[scores={HomeZ=-16,HomeX=741}] ~ ~ ~1
teleport @s[scores={HomeZ=-10,HomeX=742..759}] ~-4 ~ ~12
teleport @s[scores={HomeZ=-10,HomeX=741}] ~ ~ ~-1

teleport @s[scores={HomeY=27,HomeX=741}] ~ ~1 ~
teleport @s[scores={HomeY=27,HomeX=742..746}] ~-28 ~-3 ~-13
teleport @s[scores={HomeY=27,HomeX=747..748}] ~ ~1 ~
teleport @s[scores={HomeY=27,HomeX=749..759}] ~-13 ~-3 ~-17
teleport @s[scores={HomeY=34,HomeX=754..760}] ~ ~-1 ~
teleport @s[scores={HomeY=34,HomeX=741..755}] ~-42 ~96 ~

tag @s add already_ticked