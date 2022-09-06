execute unless entity @s[scores={Room=30}] run title @s title {"translate":"luigis_mansion:location.courtyard"}
scoreboard players set @s Room 30
scoreboard players set @s PrevRoom 30

teleport @s[scores={HomeX=644}] ~1 ~ ~
teleport @s[scores={HomeX=653,HomeZ=37}] ~-1 ~ ~
teleport @s[scores={HomeX=653,HomeZ=26..36}] ~-3 ~-91 ~-9
teleport @s[scores={HomeX=653,HomeZ=24..25}] ~-1 ~ ~
teleport @s[scores={HomeX=653,HomeZ=19..23}] ~16 ~-91 ~-13
teleport @s[scores={HomeX=653,HomeZ=17..18}] ~-1 ~ ~
teleport @s[scores={HomeX=653,HomeZ=-8..16}] ~1 ~-91 ~-19
teleport @s[scores={HomeX=653,HomeZ=-10..-9}] ~-1 ~ ~
teleport @s[scores={HomeX=653,HomeZ=-40..-11}] ~-14 ~-91 ~-20
teleport @s[scores={HomeZ=-41}] ~ ~ ~1
teleport @s[scores={HomeZ=37}] ~ ~ ~2

teleport @s[scores={HomeY=107}] ~ ~-1 ~
teleport @s[scores={HomeY=100,HomeZ=-1..37}] ~ ~1 ~
teleport @s[scores={HomeY=100,HomeZ=-4..-2,HomeX=645..646}] ~ ~1 ~
teleport @s[scores={HomeY=100,HomeZ=-4..-2,HomeX=650..652}] ~ ~1 ~
teleport @s[scores={HomeY=100,HomeZ=-10..-5,HomeX=645..647}] ~ ~1 ~
teleport @s[scores={HomeY=100,HomeZ=-10..-5,HomeX=648}] ~ ~-7 ~
teleport @s[scores={HomeY=100,HomeZ=-10..-5,HomeX=649..652}] ~ ~1 ~
teleport @s[scores={HomeY=100,HomeZ=-25..-11}] ~ ~-3 ~
teleport @s[scores={HomeY=100,HomeZ=-40..-26}] ~ ~1 ~

tag @s add already_ticked