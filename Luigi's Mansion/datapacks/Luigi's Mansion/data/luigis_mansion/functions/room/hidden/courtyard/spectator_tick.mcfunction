execute unless entity @s[scores={Room=30}] run title @s title {"translate":"luigis_mansion:location.courtyard"}
scoreboard players set @s Room 30
scoreboard players set @s PreviousRoom 30

teleport @s[scores={HomeX=644}] ~1 ~ ~
teleport @s[scores={HomeX=653,HomeZ=-22}] ~-1 ~ ~
teleport @s[scores={HomeX=653,HomeZ=-21..-11}] ~-3 ~-91 ~9
teleport @s[scores={HomeX=653,HomeZ=-10..-9}] ~-1 ~ ~
teleport @s[scores={HomeX=653,HomeZ=-8..-4}] ~16 ~-91 ~13
teleport @s[scores={HomeX=653,HomeZ=-3..-2}] ~-1 ~ ~
teleport @s[scores={HomeX=653,HomeZ=-1..23}] ~1 ~-91 ~19
teleport @s[scores={HomeX=653,HomeZ=24..25}] ~-1 ~ ~
teleport @s[scores={HomeX=653,HomeZ=26..55}] ~-14 ~-91 ~20
teleport @s[scores={HomeZ=56}] ~ ~ ~-1
teleport @s[scores={HomeZ=-22}] ~ ~ ~-2

teleport @s[scores={HomeY=107}] ~ ~-1 ~
teleport @s[scores={HomeY=100,HomeZ=-22..16}] ~ ~1 ~
teleport @s[scores={HomeY=100,HomeZ=17..19,HomeX=645..646}] ~ ~1 ~
teleport @s[scores={HomeY=100,HomeZ=17..19,HomeX=650..652}] ~ ~1 ~
teleport @s[scores={HomeY=100,HomeZ=20..25,HomeX=645..647}] ~ ~1 ~
teleport @s[scores={HomeY=100,HomeZ=20..25,HomeX=648}] ~ ~-7 ~
teleport @s[scores={HomeY=100,HomeZ=20..25,HomeX=649..652}] ~ ~1 ~
teleport @s[scores={HomeY=100,HomeZ=26..40}] ~ ~-3 ~
teleport @s[scores={HomeY=100,HomeZ=41..55}] ~ ~1 ~

tag @s add already_ticked