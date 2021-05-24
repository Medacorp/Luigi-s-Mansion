execute unless entity @s[scores={Room=65}] run title @s title {"translate":"luigis_mansion:location.ceramics_studio"}
scoreboard players set @s Room 65
scoreboard players set @s PrevRoom 65

teleport @s[scores={HomeX=697}] ~1 ~ ~
teleport @s[scores={HomeX=701,HomeZ=58..62}] ~1 ~ ~
teleport @s[scores={HomeX=712}] ~34 ~ ~-2
teleport @s[scores={HomeZ=81}] ~ ~ ~-1
teleport @s[scores={HomeZ=62,HomeX=698..701}] ~ ~ ~1
teleport @s[scores={HomeZ=57}] ~27 ~ ~-11

teleport @s[scores={HomeY=27,HomeZ=64..80}] ~-14 ~88 ~-25
teleport @s[scores={HomeY=27,HomeZ=62..63}] ~ ~1 ~
teleport @s[scores={HomeY=27,HomeZ=58..61}] ~4 ~-3 ~
teleport @s[scores={HomeY=34,HomeZ=70..80}] ~ ~-1 ~
teleport @s[scores={HomeY=34,HomeZ=58..69}] ~-14 ~96 ~-25

tag @s add already_ticked