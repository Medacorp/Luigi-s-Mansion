execute unless entity @s[scores={Room=72}] run title @s title {"translate":"luigis_mansion:location.secret_altar"}
scoreboard players set @s Room 72
scoreboard players set @s PreviousRoom 72

teleport @s[scores={HomeX=635}] ~1 ~ ~
teleport @s[scores={HomeX=653,HomeZ=-25..-21}] ~-1 ~ ~
teleport @s[scores={HomeX=653,HomeZ=-20..-16}] ~2 ~-91 ~
teleport @s[scores={HomeX=653,HomeZ=-15..-11}] ~-1 ~ ~
teleport @s[scores={HomeZ=-26}] ~ ~ ~1
teleport @s[scores={HomeZ=-10,HomeX=636..647}] ~ ~ ~-1
teleport @s[scores={HomeZ=-10,HomeX=648,HomeY=95..98}] ~ ~ ~-1
teleport @s[scores={HomeZ=-10,HomeX=649..652}] ~ ~ ~-1

teleport @s[scores={HomeY=91}] ~ ~1 ~
teleport @s[scores={HomeY=98,HomeX=636..644}] ~ ~-1 ~
teleport @s[scores={HomeY=98,HomeX=645..652}] ~ ~3 ~

tag @s add already_ticked