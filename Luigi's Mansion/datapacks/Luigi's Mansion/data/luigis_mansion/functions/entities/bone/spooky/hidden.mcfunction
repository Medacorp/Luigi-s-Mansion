execute unless entity @s[scores={PathStep=-1}] run scoreboard players add @s PathStep 1
execute facing 679 101.2 -33 run teleport @s[scores={PathStep=1..3}] ~ ~ ~ ~ -70
execute facing 679 101.2 -33 run teleport @s[scores={PathStep=4..6}] ~ ~ ~ ~ -60
execute facing 679 101.2 -33 run teleport @s[scores={PathStep=7..9}] ~ ~ ~ ~ -50
execute facing 679 101.2 -33 run teleport @s[scores={PathStep=10..12}] ~ ~ ~ ~ -40
execute facing 679 101.2 -33 run teleport @s[scores={PathStep=13..15}] ~ ~ ~ ~ -30
execute facing 679 101.2 -33 run teleport @s[scores={PathStep=16..18}] ~ ~ ~ ~ -20
execute facing 679 101.2 -33 run teleport @s[scores={PathStep=19..21}] ~ ~ ~ ~ -10
execute facing 679 101.2 -33 run teleport @s[scores={PathStep=22..24}] ~ ~ ~ ~ 0
execute facing 679 101.2 -33 run teleport @s[scores={PathStep=25..27}] ~ ~ ~ ~ 10
execute facing 679 101.2 -33 run teleport @s[scores={PathStep=28..30}] ~ ~ ~ ~ 20
execute facing 679 101.2 -33 run teleport @s[scores={PathStep=31..33}] ~ ~ ~ ~ 30
execute facing 679 101.2 -33 run teleport @s[scores={PathStep=34..36}] ~ ~ ~ ~ 40
execute facing 679 101.2 -33 run teleport @s[scores={PathStep=37..39}] ~ ~ ~ ~ 50
execute facing 679 101.2 -33 run teleport @s[scores={PathStep=40..42}] ~ ~ ~ ~ 60
execute facing 679 101.2 -33 run teleport @s[scores={PathStep=43..45}] ~ ~ ~ ~ 70
execute facing 679 101.2 -33 run teleport @s[scores={PathStep=46..}] ~ ~ ~ ~ ~
execute at @s[scores={PathStep=1..}] run function luigis_mansion:entities/bone/move_forward
scoreboard players set @s[x=679.5,y=101.2,z=-32.5,distance=..0.4] PathStep -1
data merge entity @s[x=679.5,y=101.2,z=-32.5,distance=..0.4] {Pose:{Head:[0.0f,0.0f,0.0f]}}