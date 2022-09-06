execute unless entity @s[scores={Room=73}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 73
scoreboard players set @s PrevRoom 73

teleport @s[scores={HomeX=635}] ~1 ~ ~
teleport @s[scores={HomeX=653,HomeZ=-25..-21}] ~-1 ~ ~
teleport @s[scores={HomeX=653,HomeZ=-20..-16}] ~2 ~-91 ~
teleport @s[scores={HomeX=653,HomeZ=-15..-11}] ~-1 ~ ~
teleport @s[scores={HomeZ=-26}] ~ ~ ~1
teleport @s[scores={HomeZ=-10,HomeX=636..646}] ~ ~ ~-1
teleport @s[scores={HomeZ=-10,HomeX=650..652}] ~ ~ ~-1

teleport @s[scores={HomeY=91}] ~ ~1 ~
teleport @s[scores={HomeY=98,HomeX=636..644}] ~ ~-1 ~
teleport @s[scores={HomeY=98,HomeX=645..652}] ~ ~3 ~

tag @s add already_ticked