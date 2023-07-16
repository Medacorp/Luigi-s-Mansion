execute unless block 736 2 -24 minecraft:barrier run function 3ds_remake:room/gallery/generate

teleport @s[scores={PositionIntZ=-16,PositionIntX=765..775,PositionIntY=1..6}] ~ ~75 ~2
teleport @s[scores={PositionIntZ=-16,PositionIntX=765..775,PositionIntY=7..25}] ~ ~ ~-1
teleport @s[scores={PositionIntZ=-16,PositionIntX=745..764}] ~ ~ ~-1
teleport @s[scores={PositionIntZ=-41,PositionIntX=766..775,PositionIntY=1..10}] ~ ~ ~-2
teleport @s[scores={PositionIntZ=-41,PositionIntX=766..775,PositionIntY=11..25}] ~ ~ ~1
teleport @s[scores={PositionIntZ=-41,PositionIntX=745..765}] ~ ~ ~1
teleport @s[scores={PositionIntZ=-42}] ~ ~ ~2
teleport @s[scores={PositionIntZ=-60}] ~ ~ ~1
execute if score #extra_gallery Selected matches 1 run tag @s[scores={PositionIntZ=-60}] add extra_gallery_door
teleport @s[scores={PositionIntZ=-31,PositionIntX=747..762,PositionIntY=1..3}] ~ ~ ~1
teleport @s[scores={PositionIntZ=-26,PositionIntX=747..762,PositionIntY=1..3}] ~ ~ ~-1
teleport @s[scores={PositionIntZ=-23,PositionIntX=742}] ~ ~ ~-1
teleport @s[scores={PositionIntZ=-22,PositionIntX=740..741}] ~ ~ ~-1
teleport @s[scores={PositionIntZ=-21,PositionIntX=736..739}] ~ ~ ~-1
teleport @s[scores={PositionIntZ=-34,PositionIntX=742}] ~ ~ ~1
teleport @s[scores={PositionIntZ=-35,PositionIntX=740..741}] ~ ~ ~1
teleport @s[scores={PositionIntZ=-36,PositionIntX=736..739}] ~ ~ ~1
teleport @s[scores={PositionIntX=776..777}] ~-1 ~ ~
teleport @s[scores={PositionIntX=765,PositionIntZ=-59..-43}] ~1 ~ ~
teleport @s[scores={PositionIntX=764,PositionIntY=1..5,PositionIntZ=-40..-31}] ~1 ~ ~
teleport @s[scores={PositionIntX=764,PositionIntY=1..3,PositionIntZ=-30..-27}] ~-2 ~ ~
teleport @s[scores={PositionIntX=764,PositionIntY=4..5,PositionIntZ=-30..-27}] ~1 ~ ~
teleport @s[scores={PositionIntX=764,PositionIntY=1..5,PositionIntZ=-26..-15}] ~1 ~ ~
teleport @s[scores={PositionIntX=763,PositionIntY=1..3,PositionIntZ=-30..-27}] ~2 ~ ~
teleport @s[scores={PositionIntX=746,PositionIntY=1..3,PositionIntZ=-30..-27}] ~-2 ~ ~
teleport @s[scores={PositionIntX=745,PositionIntY=1..3,PositionIntZ=-30..-27}] ~2 ~ ~
teleport @s[scores={PositionIntX=745,PositionIntY=4..9,PositionIntZ=-30..-27}] ~-1 ~ ~
teleport @s[scores={PositionIntX=743,PositionIntY=1..9,PositionIntZ=-33}] ~-1 ~ ~
teleport @s[scores={PositionIntX=744,PositionIntY=1..9,PositionIntZ=-32..-31}] ~-1 ~ ~
teleport @s[scores={PositionIntX=744,PositionIntY=1..9,PositionIntZ=-26..-25}] ~-1 ~ ~
teleport @s[scores={PositionIntX=743,PositionIntY=1..9,PositionIntZ=-24}] ~-1 ~ ~
teleport @s[scores={PositionIntX=735,PositionIntZ=-35..-34}] ~1 ~ ~
teleport @s[scores={PositionIntX=734,PositionIntZ=-33}] ~1 ~ ~
teleport @s[scores={PositionIntX=733,PositionIntZ=-32..-25}] ~1 ~ ~
teleport @s[scores={PositionIntX=734,PositionIntZ=-24}] ~1 ~ ~
teleport @s[scores={PositionIntX=735,PositionIntZ=-23..-22}] ~1 ~ ~
teleport @s[scores={PositionIntX=756,PositionIntY=6..10}] ~1 ~ ~
teleport @s[scores={PositionIntX=748,PositionIntY=11..15}] ~1 ~ ~
teleport @s[scores={PositionIntX=744,PositionIntY=16..25}] ~1 ~ ~

teleport @s[scores={PositionIntY=0}] ~ ~1 ~
teleport @s[scores={PositionIntY=5,PositionIntX=757..764,PositionIntZ=-40..-31}] ~ ~1 ~
teleport @s[scores={PositionIntY=5,PositionIntX=757..762,PositionIntZ=-30..-27}] ~ ~-3 ~
teleport @s[scores={PositionIntY=5,PositionIntX=763..764,PositionIntZ=-30..-27}] ~ ~1 ~
teleport @s[scores={PositionIntY=5,PositionIntX=757..764,PositionIntZ=-26..-15}] ~ ~1 ~
teleport @s[scores={PositionIntY=10,PositionIntX=749..756}] ~ ~1 ~
teleport @s[scores={PositionIntY=15,PositionIntX=745..748}] ~ ~1 ~
teleport @s[scores={PositionIntY=25}] ~ ~-1 ~
teleport @s[scores={PositionIntY=10,PositionIntZ=-59..-43}] ~ ~-1 ~
teleport @s[scores={PositionIntY=9,PositionIntX=733..745}] ~ ~-1 ~
teleport @s[scores={PositionIntY=3,PositionIntX=747..756,PositionIntZ=-30..-27}] ~ ~-1 ~
teleport @s[scores={PositionIntY=3,PositionIntX=757..762,PositionIntZ=-30..-27}] ~ ~3 ~

execute if score #global_3ds_remake_gallery Selected matches 0 run teleport @s ~ ~75 ~