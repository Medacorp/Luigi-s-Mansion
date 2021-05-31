execute unless entity @s[scores={Room=-4}] run title @s title {"translate":"luigis_mansion:location.gallery"}
scoreboard players set @s Room -4
scoreboard players set @s PrevRoom -4
teleport @s[scores={HomeZ=-16}] ~ ~ ~2
teleport @s[scores={HomeZ=-20,HomeX=729..741}] ~ ~ ~-1
teleport @s[scores={HomeZ=-21,HomeX=744..764}] ~ ~ ~-1
teleport @s[scores={HomeZ=-30,HomeX=744..764}] ~ ~ ~-1
teleport @s[scores={HomeZ=-37,HomeX=729..741}] ~ ~ ~1
teleport @s[scores={HomeZ=-36,HomeX=744..764}] ~ ~ ~1
teleport @s[scores={HomeZ=-27,HomeX=744..764}] ~ ~ ~1
teleport @s[scores={HomeZ=-41}] ~ ~ ~1
teleport @s[scores={HomeX=778}] ~-1 ~ ~
teleport @s[scores={HomeX=742,HomeZ=-35..-31}] ~2 ~ ~
teleport @s[scores={HomeX=742,HomeZ=-26..-22}] ~2 ~ ~
teleport @s[scores={HomeX=742,HomeZ=-37..-36}] ~-1 ~ ~
teleport @s[scores={HomeX=742,HomeZ=-30..-27}] ~-1 ~ ~
teleport @s[scores={HomeX=742,HomeZ=-21..-20}] ~-1 ~ ~
teleport @s[scores={HomeX=764,HomeZ=-40..-36}] ~1 ~ ~
teleport @s[scores={HomeX=764,HomeZ=-30..-27}] ~1 ~ ~
teleport @s[scores={HomeX=764,HomeZ=-21..-16}] ~1 ~ ~
teleport @s[scores={HomeX=743}] ~-2 ~ ~
teleport @s[scores={HomeX=728}] ~1 ~ ~

teleport @s[scores={HomeY=75}] ~ ~1 ~
teleport @s[scores={HomeY=82}] ~ ~-1 ~

tag @s add already_ticked