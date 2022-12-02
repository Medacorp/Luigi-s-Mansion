execute unless block 736 2 -24 minecraft:barrier run function luigis_mansion_3ds_remake:room/gallery/generate
execute unless entity @s[scores={Room=-5}] run title @s title {"translate":"luigis_mansion:location.gallery"}
scoreboard players set @s Room -5
scoreboard players set @s PrevRoom -5

teleport @s[scores={HomeZ=-16,HomeX=765..775,HomeY=1..6}] ~ ~75 ~2
teleport @s[scores={HomeZ=-16,HomeX=765..775,HomeY=7..25}] ~ ~ ~-1
teleport @s[scores={HomeZ=-16,HomeX=745..764}] ~ ~ ~-1
teleport @s[scores={HomeZ=-41,HomeX=766..775,HomeY=1..10}] ~ ~ ~-2
teleport @s[scores={HomeZ=-41,HomeX=766..775,HomeY=11..25}] ~ ~ ~1
teleport @s[scores={HomeZ=-41,HomeX=745..765}] ~ ~ ~1
teleport @s[scores={HomeZ=-42}] ~ ~ ~2
teleport @s[scores={HomeZ=-60}] ~ ~ ~1
teleport @s[scores={HomeZ=-31,HomeX=747..762,HomeY=1..3}] ~ ~ ~1
teleport @s[scores={HomeZ=-26,HomeX=747..762,HomeY=1..3}] ~ ~ ~-1
teleport @s[scores={HomeZ=-23,HomeX=742}] ~ ~ ~-1
teleport @s[scores={HomeZ=-22,HomeX=740..741}] ~ ~ ~-1
teleport @s[scores={HomeZ=-21,HomeX=736..739}] ~ ~ ~-1
teleport @s[scores={HomeZ=-34,HomeX=742}] ~ ~ ~1
teleport @s[scores={HomeZ=-35,HomeX=740..741}] ~ ~ ~1
teleport @s[scores={HomeZ=-36,HomeX=736..739}] ~ ~ ~1
teleport @s[scores={HomeX=776..777}] ~-1 ~ ~
teleport @s[scores={HomeX=765,HomeZ=-59..-43}] ~1 ~ ~
teleport @s[scores={HomeX=764,HomeY=1..5,HomeZ=-40..-31}] ~1 ~ ~
teleport @s[scores={HomeX=764,HomeY=1..3,HomeZ=-30..-27}] ~-2 ~ ~
teleport @s[scores={HomeX=764,HomeY=4..5,HomeZ=-30..-27}] ~1 ~ ~
teleport @s[scores={HomeX=764,HomeY=1..5,HomeZ=-26..-15}] ~1 ~ ~
teleport @s[scores={HomeX=763,HomeY=1..3,HomeZ=-30..-27}] ~2 ~ ~
teleport @s[scores={HomeX=746,HomeY=1..3,HomeZ=-30..-27}] ~-2 ~ ~
teleport @s[scores={HomeX=745,HomeY=1..3,HomeZ=-30..-27}] ~2 ~ ~
teleport @s[scores={HomeX=745,HomeY=4..9,HomeZ=-30..-27}] ~-1 ~ ~
teleport @s[scores={HomeX=743,HomeY=1..9,HomeZ=-33}] ~-1 ~ ~
teleport @s[scores={HomeX=744,HomeY=1..9,HomeZ=-32..-31}] ~-1 ~ ~
teleport @s[scores={HomeX=744,HomeY=1..9,HomeZ=-26..-25}] ~-1 ~ ~
teleport @s[scores={HomeX=743,HomeY=1..9,HomeZ=-24}] ~-1 ~ ~
teleport @s[scores={HomeX=735,HomeZ=-35..-34}] ~1 ~ ~
teleport @s[scores={HomeX=734,HomeZ=-33}] ~1 ~ ~
teleport @s[scores={HomeX=733,HomeZ=-32..-25}] ~1 ~ ~
teleport @s[scores={HomeX=734,HomeZ=-24}] ~1 ~ ~
teleport @s[scores={HomeX=735,HomeZ=-23..-22}] ~1 ~ ~
teleport @s[scores={HomeX=756,HomeY=6..10}] ~1 ~ ~
teleport @s[scores={HomeX=748,HomeY=11..15}] ~1 ~ ~
teleport @s[scores={HomeX=744,HomeY=16..25}] ~1 ~ ~

teleport @s[scores={HomeY=0}] ~ ~1 ~
teleport @s[scores={HomeY=5,HomeX=757..764,HomeZ=-40..-31}] ~ ~1 ~
teleport @s[scores={HomeY=5,HomeX=757..762,HomeZ=-30..-27}] ~ ~-3 ~
teleport @s[scores={HomeY=5,HomeX=763..764,HomeZ=-30..-27}] ~ ~1 ~
teleport @s[scores={HomeY=5,HomeX=757..764,HomeZ=-26..-15}] ~ ~1 ~
teleport @s[scores={HomeY=10,HomeX=749..756}] ~ ~1 ~
teleport @s[scores={HomeY=15,HomeX=745..748}] ~ ~1 ~
teleport @s[scores={HomeY=25}] ~ ~-1 ~
teleport @s[scores={HomeY=10,HomeZ=-59..-43}] ~ ~-1 ~
teleport @s[scores={HomeY=9,HomeX=733..745}] ~ ~-1 ~
teleport @s[scores={HomeY=3,HomeX=747..756,HomeZ=-30..-27}] ~ ~-1 ~
teleport @s[scores={HomeY=3,HomeX=757..762,HomeZ=-30..-27}] ~ ~3 ~

tag @s add already_ticked

execute if score #global_3ds_remake_gallery Selected matches 0 run teleport @s ~ ~75 ~