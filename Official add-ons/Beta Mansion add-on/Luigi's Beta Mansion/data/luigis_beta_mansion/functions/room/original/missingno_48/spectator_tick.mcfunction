execute unless entity @s[scores={Room=64}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 64
scoreboard players set @s PrevRoom 64

teleport @s[scores={HomeX=683}] ~1 ~ ~
teleport @s[scores={HomeX=712}] ~-1 ~ ~
teleport @s[scores={HomeZ=-30}] ~ ~ ~1
teleport @s[scores={HomeZ=45}] ~ ~ ~-1

teleport @s[scores={HomeY=143}] ~ ~-1 ~
teleport @s[scores={HomeY=129,HomeX=684..697,HomeZ=-29..-18}] ~5 ~-96 ~-39
teleport @s[scores={HomeY=129,HomeZ=-17..-16}] ~ ~1 ~
teleport @s[scores={HomeY=129,HomeZ=-15..-11}] ~42 ~-96 ~
teleport @s[scores={HomeY=129,HomeZ=-10..-9}] ~ ~1 ~
teleport @s[scores={HomeY=129,HomeX=684..697,HomeZ=-8..23}] ~ ~-5 ~
teleport @s[scores={HomeY=129,HomeZ=24..25}] ~ ~1 ~
teleport @s[scores={HomeY=129,HomeZ=26..30}] ~41 ~-96 ~16
teleport @s[scores={HomeY=129,HomeZ=31..32}] ~ ~1 ~
teleport @s[scores={HomeY=129,HomeX=684..697,HomeZ=33..44}] ~14 ~-96 ~25
teleport @s[scores={HomeY=129,HomeX=698..699,HomeZ=-29..-18}] ~ ~1 ~
teleport @s[scores={HomeY=129,HomeX=698..699,HomeZ=-8..23}] ~ ~1 ~
teleport @s[scores={HomeY=129,HomeX=698..699,HomeZ=33..44}] ~ ~1 ~
teleport @s[scores={HomeY=129,HomeX=700..704,HomeZ=-29..-18}] ~14 ~-96 ~-13
teleport @s[scores={HomeY=129,HomeX=700..711,HomeZ=-8..23}] ~38 ~-96 ~10
teleport @s[scores={HomeY=129,HomeX=700..711,HomeZ=33..44}] ~46 ~-96 ~23
teleport @s[scores={HomeY=129,HomeX=705..706,HomeZ=-29..-18}] ~ ~1 ~
teleport @s[scores={HomeY=129,HomeX=707..711,HomeZ=-29..-18}] ~27 ~-96 ~-18

tag @s add already_ticked