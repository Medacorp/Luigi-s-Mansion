execute unless entity @s[scores={Room=17}] run title @s title {"translate":"luigis_mansion:location.ball_room"}
scoreboard players set @s Room 17
scoreboard players set @s PreviousRoom 17

teleport @s[scores={HomeX=696}] ~-7 ~ ~
teleport @s[scores={HomeX=711,HomeZ=66..83}] ~3 ~ ~-7
teleport @s[scores={HomeX=711,HomeZ=64..65}] ~-1 ~ ~
teleport @s[scores={HomeX=711,HomeZ=54..63}] ~3 ~ ~-15
teleport @s[scores={HomeZ=53}] ~1 ~ ~-17
teleport @s[scores={HomeZ=84}] ~ ~ ~-1

teleport @s[scores={HomeY=16}] ~-2 ~3 ~18
teleport @s[scores={HomeY=9,HomeX=700..710,HomeZ=66..83}] ~-12 ~-3 ~-7
teleport @s[scores={HomeY=9,HomeX=700..710,HomeZ=64..65}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeX=700..710,HomeZ=59..63}] ~1 ~-3 ~-28
teleport @s[scores={HomeY=9,HomeX=700..710,HomeZ=57..58}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeX=700..710,HomeZ=54..56}] ~-12 ~-3 ~-37
teleport @s[scores={HomeY=9,HomeX=698..699}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeX=697,HomeZ=64..83}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeX=697,HomeZ=59..63}] ~-13 ~-3 ~-28
teleport @s[scores={HomeY=9,HomeX=697,HomeZ=54..58}] ~ ~1 ~

tag @s add already_ticked