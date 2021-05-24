execute unless entity @s[scores={Room=72}] run title @s title {"translate":"luigis_mansion:location.secret_altar"}
scoreboard players set @s Room 72
scoreboard players set @s PrevRoom 72

teleport @s[scores={HomeX=635}] ~1 ~ ~
teleport @s[scores={HomeX=653,HomeZ=36..40}] ~-1 ~ ~
teleport @s[scores={HomeX=653,HomeZ=31..35}] ~2 ~-91 ~
teleport @s[scores={HomeX=653,HomeZ=26..30}] ~-1 ~ ~
teleport @s[scores={HomeZ=41}] ~ ~ ~-1
teleport @s[scores={HomeZ=25,HomeX=636..647}] ~ ~ ~1
teleport @s[scores={HomeZ=25,HomeX=648,HomeY=95..98}] ~ ~ ~1
teleport @s[scores={HomeZ=25,HomeX=649..652}] ~ ~ ~1

teleport @s[scores={HomeY=91}] ~ ~1 ~
teleport @s[scores={HomeY=98,HomeX=636..644}] ~ ~-1 ~
teleport @s[scores={HomeY=98,HomeX=645..652}] ~ ~3 ~

tag @s add already_ticked