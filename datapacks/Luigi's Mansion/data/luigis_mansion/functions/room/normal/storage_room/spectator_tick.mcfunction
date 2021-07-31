execute unless entity @s[scores={Room=18}] run title @s title {"translate":"luigis_mansion:location.storage_room"}
scoreboard players set @s Room 18
scoreboard players set @s PrevRoom 18

teleport @s[scores={HomeX=690}] ~7 ~ ~
teleport @s[scores={HomeX=680,HomeZ=-43..-39}] ~4 ~ ~15
teleport @s[scores={HomeX=680,HomeZ=-45..-44}] ~1 ~ ~
teleport @s[scores={HomeX=680,HomeZ=-68..-46}] ~-15 ~ ~8
teleport @s[scores={HomeZ=-38}] ~6 ~ ~17
teleport @s[scores={HomeZ=-69}] ~ ~ ~1

teleport @s[scores={HomeY=16,HomeZ=-57..-39}] ~-19 ~3 ~-34
teleport @s[scores={HomeY=16,HomeZ=-59..-58}] ~ ~-1 ~
teleport @s[scores={HomeY=16,HomeZ=-68..-60}] ~-40 ~3 ~-14
teleport @s[scores={HomeY=9,HomeZ=-43..-39,HomeX=688..689}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=-44..-39,HomeX=686..687}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=-45..-39,HomeX=681..685}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=-49..-44,HomeX=688..689}] ~-8 ~-3 ~28
teleport @s[scores={HomeY=9,HomeZ=-50..-45,HomeX=686..687}] ~-8 ~-3 ~28
teleport @s[scores={HomeY=9,HomeZ=-50..-46,HomeX=681..685}] ~-8 ~-3 ~28
teleport @s[scores={HomeY=9,HomeZ=-68..-50,HomeX=688..689}] ~ ~1 ~
teleport @s[scores={HomeY=9,HomeZ=-68..-51,HomeX=681..687}] ~ ~1 ~

tag @s add already_ticked