execute unless entity @s[scores={Room=34}] run title @s title {"translate":"luigis_mansion:location.tea_room"}
scoreboard players set @s Room 34
scoreboard players set @s PrevRoom 34

teleport @s[scores={HomeX=638}] ~1 ~ ~
teleport @s[scores={HomeX=648,HomeZ=-35..-31}] ~32 ~ ~7
teleport @s[scores={HomeX=648,HomeZ=-37..-36}] ~-1 ~ ~
teleport @s[scores={HomeX=648,HomeZ=-60..-38}] ~13 ~ ~
teleport @s[scores={HomeZ=-30}] ~15 ~ ~3
teleport @s[scores={HomeZ=-61,HomeX=639..642}] ~ ~ ~1
teleport @s[scores={HomeZ=-61,HomeX=643..647}] ~-16 ~ ~-23

teleport @s[scores={HomeY=25}] ~16 ~94 ~20
teleport @s[scores={HomeY=18}] ~ ~-3 ~

tag @s add already_ticked