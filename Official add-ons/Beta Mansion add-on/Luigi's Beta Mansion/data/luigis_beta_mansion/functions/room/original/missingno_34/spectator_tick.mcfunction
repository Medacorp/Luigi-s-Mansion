execute unless entity @s[scores={Room=50}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 50
scoreboard players set @s PrevRoom 50

teleport @s[scores={HomeX=733}] ~-15 ~ ~5
teleport @s[scores={HomeX=745}] ~-1 ~ ~
teleport @s[scores={HomeZ=-35}] ~15 ~ ~20
teleport @s[scores={HomeZ=-59}] ~ ~ ~1

teleport @s[scores={HomeY=27,HomeZ=-38..-36}] ~2 ~-3 ~1
teleport @s[scores={HomeY=27,HomeZ=-40..-39}] ~ ~1 ~
teleport @s[scores={HomeY=27,HomeZ=-58..-41}] ~2 ~-3 ~-3
teleport @s[scores={HomeY=34,HomeZ=-58..-48}] ~ ~-1 ~
teleport @s[scores={HomeY=34,HomeZ=-47..-36,HomeX=734..738}] ~-27 ~96 ~18
teleport @s[scores={HomeY=34,HomeZ=-47..-36,HomeX=739..744}] ~ ~-1 ~

tag @s add already_ticked