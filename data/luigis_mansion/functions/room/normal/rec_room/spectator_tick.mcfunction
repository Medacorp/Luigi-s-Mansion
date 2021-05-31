execute unless entity @s[scores={Room=32}] run title @s title {"translate":"luigis_mansion:location.rec_room"}
scoreboard players set @s Room 32
scoreboard players set @s PrevRoom 32

teleport @s[scores={HomeX=638}] ~14 ~91 ~20
teleport @s[scores={HomeX=648,HomeZ=-35..-31}] ~32 ~ ~7
teleport @s[scores={HomeX=648,HomeZ=-37..-36}] ~-1 ~ ~
teleport @s[scores={HomeX=648,HomeZ=-60..-38}] ~13 ~ ~
teleport @s[scores={HomeZ=-30}] ~15 ~ ~3
teleport @s[scores={HomeZ=-61}] ~ ~ ~1

teleport @s[scores={HomeY=16}] ~ ~3 ~
teleport @s[scores={HomeY=9,HomeZ=-37..-31,HomeX=639}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=-36..-31,HomeX=640..643}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=-35..-31,HomeX=644..647}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=-40..-36,HomeX=639}] ~16 ~-3 ~20
teleport @s[scores={HomeY=9,HomeZ=-40..-35,HomeX=640..643}] ~16 ~-3 ~20
teleport @s[scores={HomeY=9,HomeZ=-39..-34,HomeX=644..645}] ~16 ~-3 ~20
teleport @s[scores={HomeY=9,HomeZ=-38..-34,HomeX=646..647}] ~16 ~-3 ~20
teleport @s[scores={HomeY=9,HomeZ=-60..-41,HomeX=639..643}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=-60..-40,HomeX=644..645}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=-60..-39,HomeX=646..647}] ~ ~1 ~

tag @s add already_ticked