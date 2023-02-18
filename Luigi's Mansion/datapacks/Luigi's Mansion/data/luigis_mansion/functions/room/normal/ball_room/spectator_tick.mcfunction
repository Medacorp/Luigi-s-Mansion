execute unless entity @s[scores={Room=17}] run title @s title {"translate":"luigis_mansion:location.ball_room"}
scoreboard players set @s Room 17
scoreboard players set @s PreviousRoom 17

teleport @s[scores={HomeX=696}] ~-7 ~ ~
teleport @s[scores={HomeX=711,HomeZ=-68..-51}] ~3 ~ ~7
teleport @s[scores={HomeX=711,HomeZ=-50..-49}] ~-1 ~ ~
teleport @s[scores={HomeX=711,HomeZ=-48..-39}] ~3 ~ ~15
teleport @s[scores={HomeZ=-38}] ~1 ~ ~17
teleport @s[scores={HomeZ=-69}] ~ ~ ~1

teleport @s[scores={HomeY=16}] ~-2 ~3 ~-18
teleport @s[scores={HomeY=9,HomeX=700..710,HomeZ=-68..-51}] ~-12 ~-3 ~7
teleport @s[scores={HomeY=9,HomeX=700..710,HomeZ=-50..-49}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeX=700..710,HomeZ=-48..-44}] ~1 ~-3 ~28
teleport @s[scores={HomeY=9,HomeX=700..710,HomeZ=-43..-42}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeX=700..710,HomeZ=-41..-39}] ~-12 ~-3 ~37
teleport @s[scores={HomeY=9,HomeX=698..699}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeX=697,HomeZ=-68..-49}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeX=697,HomeZ=-48..-44}] ~-13 ~-3 ~28
teleport @s[scores={HomeY=9,HomeX=697,HomeZ=-43..-39}] ~ ~1 ~

tag @s add already_ticked