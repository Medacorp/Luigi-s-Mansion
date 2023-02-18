execute unless entity @s[scores={Room=46}] run title @s title {"translate":"luigis_mansion:location.observatory"}
scoreboard players set @s Room 46
scoreboard players set @s PreviousRoom 46

teleport @s[scores={HomeX=626}] ~1 ~ ~
teleport @s[scores={HomeX=640,HomeZ=89..96}] ~25 ~ ~-22
teleport @s[scores={HomeX=640,HomeZ=97..98}] ~1 ~ ~
teleport @s[scores={HomeX=650,HomeZ=89..96}] ~45 ~ ~4
teleport @s[scores={HomeX=650,HomeZ=97..98}] ~-1 ~ ~
teleport @s[scores={HomeX=651,HomeZ=99..159}] ~-1 ~ ~
teleport @s[scores={HomeZ=88}] ~21 ~ ~18
teleport @s[scores={HomeZ=98,HomeX=641..650,HomeY=16..18}] ~ ~ ~1
teleport @s[scores={HomeZ=98,HomeX=639..640}] ~ ~ ~1
teleport @s[scores={HomeZ=98,HomeX=634..638}] ~27 ~ ~-23
teleport @s[scores={HomeZ=98,HomeX=632..633}] ~ ~ ~1
teleport @s[scores={HomeZ=98,HomeX=627..631,HomeY=19..25}] ~16 ~ ~-23
teleport @s[scores={HomeZ=98,HomeX=627..631,HomeY=26}] ~ ~ ~1
teleport @s[scores={HomeZ=98,HomeX=627..631,HomeY=16..18}] ~ ~ ~1
teleport @s[scores={HomeZ=160}] ~ ~ ~-1

teleport @s[scores={HomeY=15}] ~ ~1 ~
teleport @s[scores={HomeY=18,HomeZ=89..96}] ~40 ~-3 ~-14
teleport @s[scores={HomeY=18,HomeZ=97..98}] ~ ~1 ~
teleport @s[scores={HomeY=25,HomeZ=89..96}] ~32 ~94 ~-42
teleport @s[scores={HomeY=25,HomeZ=97..98}] ~ ~-1 ~
teleport @s[scores={HomeY=26,HomeZ=99..159}] ~ ~-1 ~

tag @s add already_ticked