execute unless entity @s[scores={Room=25}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 25
scoreboard players set @s PrevRoom 25

teleport @s[scores={HomeX=713,HomeZ=-23..-22}] ~1 ~ ~
teleport @s[scores={HomeX=713,HomeZ=-42..-24}] ~-5 ~ ~-33
teleport @s[scores={HomeX=719,HomeZ=-33..-17}] ~17 ~ ~-4
teleport @s[scores={HomeX=719,HomeZ=-35..-34}] ~-1 ~ ~
teleport @s[scores={HomeX=719,HomeZ=-42..-36}] ~17 ~ ~-8
teleport @s[scores={HomeZ=-16,HomeX=713}] ~ ~ ~-1
teleport @s[scores={HomeZ=-16,HomeX=714..718}] ~23 ~ ~16

teleport @s[scores={HomeY=25,HomeZ=-42..-31}] ~ ~3 ~
teleport @s[scores={HomeY=25,HomeZ=-30..-29}] ~ ~-1 ~
teleport @s[scores={HomeY=25,HomeZ=-28..-24}] ~28 ~3 ~13
teleport @s[scores={HomeY=25,HomeZ=-23..-22}] ~ ~-1 ~
teleport @s[scores={HomeY=25,HomeZ=-21..-17,HomeX=714..718}] ~24 ~3 ~23
teleport @s[scores={HomeY=25,HomeZ=-21..-17,HomeX=713}] ~ ~-1 ~
teleport @s[scores={HomeY=18,HomeZ=-33..-17}] ~ ~-3 ~
teleport @s[scores={HomeY=18,HomeZ=-35..-34}] ~ ~1 ~
teleport @s[scores={HomeY=18,HomeZ=-42..-36}] ~ ~-3 ~-8

tag @s add already_ticked