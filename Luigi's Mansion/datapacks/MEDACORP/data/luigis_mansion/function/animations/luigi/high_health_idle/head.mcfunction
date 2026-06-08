scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=1..4}] AnimationRotationY 5
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=5..10}] AnimationRotationY 12
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=11}] AnimationRotationY 35
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=12..17}] AnimationRotationY 12
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=18}] AnimationRotationY 10
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=19..20}] AnimationRotationY 5
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=31}] AnimationRotationY 5
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=32}] AnimationRotationY 10
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=33}] AnimationRotationY 17
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=34}] AnimationRotationY 25
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=35}] AnimationRotationY 32
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=36}] AnimationRotationY 40
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=37}] AnimationRotationY 47
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=38}] AnimationRotationY 40
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=39}] AnimationRotationY 77
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=40..41}] AnimationRotationY 67
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=42}] AnimationRotationY 62
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=43}] AnimationRotationY 55
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=44}] AnimationRotationY 50
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=45}] AnimationRotationY 40
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=46}] AnimationRotationY 32
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=47}] AnimationRotationY 25
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=48}] AnimationRotationY 17
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=49}] AnimationRotationY 10
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=50}] AnimationRotationY 5
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=71..72}] AnimationRotationY 25
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=73}] AnimationRotationY 50
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=74}] AnimationRotationY 75
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=75..76}] AnimationRotationY 100
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=77}] AnimationRotationY 75
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=78}] AnimationRotationY 50
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=79..80}] AnimationRotationY 25
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=101}] AnimationRotationY 5
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=102}] AnimationRotationY 17
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=103}] AnimationRotationY 27
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=104}] AnimationRotationY 37
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=105..106}] AnimationRotationY 50
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=107}] AnimationRotationY 37
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=108}] AnimationRotationY 27
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=109}] AnimationRotationY 17
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=110}] AnimationRotationY 5
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=131}] AnimationRotationY 12
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=132..139}] AnimationRotationY 25
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=140}] AnimationRotationY 12
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..4}] AnimationRotationY 5
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=5..10}] AnimationRotationY 12
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=11}] AnimationRotationY 35
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=12..17}] AnimationRotationY 12
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=18}] AnimationRotationY 10
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=19..20}] AnimationRotationY 5
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=31}] AnimationRotationY 5
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=32}] AnimationRotationY 10
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=33}] AnimationRotationY 17
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=34}] AnimationRotationY 25
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=35}] AnimationRotationY 32
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=36}] AnimationRotationY 40
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=37}] AnimationRotationY 47
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=38}] AnimationRotationY 40
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=39}] AnimationRotationY 77
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=40..41}] AnimationRotationY 67
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=42}] AnimationRotationY 62
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=43}] AnimationRotationY 55
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=44}] AnimationRotationY 50
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=45}] AnimationRotationY 40
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=46}] AnimationRotationY 32
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=47}] AnimationRotationY 25
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=48}] AnimationRotationY 17
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=49}] AnimationRotationY 10
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=50}] AnimationRotationY 5
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=71..72}] AnimationRotationY 25
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=73}] AnimationRotationY 50
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=74}] AnimationRotationY 75
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=75..76}] AnimationRotationY 100
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=77}] AnimationRotationY 75
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=78}] AnimationRotationY 50
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=79..80}] AnimationRotationY 25
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=101}] AnimationRotationY 5
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=102}] AnimationRotationY 17
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=103}] AnimationRotationY 27
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=104}] AnimationRotationY 37
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=105..106}] AnimationRotationY 50
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=107}] AnimationRotationY 37
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=108}] AnimationRotationY 27
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=109}] AnimationRotationY 17
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=110}] AnimationRotationY 5
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=131}] AnimationRotationY 12
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=132..139}] AnimationRotationY 25
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=140}] AnimationRotationY 12
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 0
scoreboard players set @s[scores={AnimationProgress=2}] AnimationRotationX 2
scoreboard players set @s[scores={AnimationProgress=3}] AnimationRotationX 5
scoreboard players set @s[scores={AnimationProgress=4}] AnimationRotationX 7
scoreboard players set @s[scores={AnimationProgress=5}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=6}] AnimationRotationX 12
scoreboard players set @s[scores={AnimationProgress=7}] AnimationRotationX 15
scoreboard players set @s[scores={AnimationProgress=8}] AnimationRotationX 17
scoreboard players set @s[scores={AnimationProgress=9}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=10}] AnimationRotationX 22
scoreboard players set @s[scores={AnimationProgress=11}] AnimationRotationX 27
scoreboard players set @s[scores={AnimationProgress=12}] AnimationRotationX 30
scoreboard players set @s[scores={AnimationProgress=13}] AnimationRotationX 32
scoreboard players set @s[scores={AnimationProgress=14}] AnimationRotationX 35
scoreboard players set @s[scores={AnimationProgress=15}] AnimationRotationX 37
scoreboard players set @s[scores={AnimationProgress=16}] AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=17}] AnimationRotationX 42
scoreboard players set @s[scores={AnimationProgress=18}] AnimationRotationX 45
scoreboard players set @s[scores={AnimationProgress=19}] AnimationRotationX 47
scoreboard players set @s[scores={AnimationProgress=20..30}] AnimationRotationX 50
scoreboard players set @s[scores={AnimationProgress=31}] AnimationRotationX 45
scoreboard players set @s[scores={AnimationProgress=32}] AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=33}] AnimationRotationX 35
scoreboard players set @s[scores={AnimationProgress=34}] AnimationRotationX 30
scoreboard players set @s[scores={AnimationProgress=35}] AnimationRotationX 25
scoreboard players set @s[scores={AnimationProgress=36}] AnimationRotationX 17
scoreboard players set @s[scores={AnimationProgress=37}] AnimationRotationX 5
scoreboard players set @s[scores={AnimationProgress=38}] AnimationRotationX -5
scoreboard players set @s[scores={AnimationProgress=39}] AnimationRotationX -15
scoreboard players set @s[scores={AnimationProgress=40}] AnimationRotationX -25
scoreboard players set @s[scores={AnimationProgress=41}] AnimationRotationX -40
scoreboard players set @s[scores={AnimationProgress=42}] AnimationRotationX -50
scoreboard players set @s[scores={AnimationProgress=43}] AnimationRotationX -60
scoreboard players set @s[scores={AnimationProgress=44}] AnimationRotationX -67
scoreboard players set @s[scores={AnimationProgress=45}] AnimationRotationX -75
scoreboard players set @s[scores={AnimationProgress=46}] AnimationRotationX -80
scoreboard players set @s[scores={AnimationProgress=47}] AnimationRotationX -85
scoreboard players set @s[scores={AnimationProgress=48}] AnimationRotationX -90
scoreboard players set @s[scores={AnimationProgress=49}] AnimationRotationX -95
scoreboard players set @s[scores={AnimationProgress=50..70}] AnimationRotationX -100
scoreboard players set @s[scores={AnimationProgress=71}] AnimationRotationX -95
scoreboard players set @s[scores={AnimationProgress=72}] AnimationRotationX -90
scoreboard players set @s[scores={AnimationProgress=73}] AnimationRotationX -85
scoreboard players set @s[scores={AnimationProgress=74}] AnimationRotationX -80
scoreboard players set @s[scores={AnimationProgress=75}] AnimationRotationX -75
scoreboard players set @s[scores={AnimationProgress=76}] AnimationRotationX -70
scoreboard players set @s[scores={AnimationProgress=77}] AnimationRotationX -65
scoreboard players set @s[scores={AnimationProgress=78}] AnimationRotationX -60
scoreboard players set @s[scores={AnimationProgress=79}] AnimationRotationX -55
scoreboard players set @s[scores={AnimationProgress=80}] AnimationRotationX -50
scoreboard players set @s[scores={AnimationProgress=81}] AnimationRotationX -45
scoreboard players set @s[scores={AnimationProgress=82}] AnimationRotationX -40
scoreboard players set @s[scores={AnimationProgress=83}] AnimationRotationX -35
scoreboard players set @s[scores={AnimationProgress=84}] AnimationRotationX -30
scoreboard players set @s[scores={AnimationProgress=85}] AnimationRotationX -25
scoreboard players set @s[scores={AnimationProgress=86}] AnimationRotationX -20
scoreboard players set @s[scores={AnimationProgress=87}] AnimationRotationX -15
scoreboard players set @s[scores={AnimationProgress=88}] AnimationRotationX -10
scoreboard players set @s[scores={AnimationProgress=89}] AnimationRotationX -5
scoreboard players set @s[scores={AnimationProgress=90}] AnimationRotationX 5
scoreboard players set @s[scores={AnimationProgress=91}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=92}] AnimationRotationX 15
scoreboard players set @s[scores={AnimationProgress=93}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=94}] AnimationRotationX 25
scoreboard players set @s[scores={AnimationProgress=95}] AnimationRotationX 30
scoreboard players set @s[scores={AnimationProgress=96}] AnimationRotationX 35
scoreboard players set @s[scores={AnimationProgress=97}] AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=98}] AnimationRotationX 45
scoreboard players set @s[scores={AnimationProgress=99..100}] AnimationRotationX 50
scoreboard players set @s[scores={AnimationProgress=101}] AnimationRotationX 45
scoreboard players set @s[scores={AnimationProgress=102}] AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=103}] AnimationRotationX 35
scoreboard players set @s[scores={AnimationProgress=104}] AnimationRotationX 30
scoreboard players set @s[scores={AnimationProgress=105}] AnimationRotationX 25
scoreboard players set @s[scores={AnimationProgress=106}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=107}] AnimationRotationX 15
scoreboard players set @s[scores={AnimationProgress=108}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=109}] AnimationRotationX 5
scoreboard players set @s[scores={AnimationProgress=110..140}] AnimationRotationX 0
execute at @s[scores={AnimationProgress=45..75}] run teleport @s ^ ^ ^0.125
scoreboard players set @s[scores={AnimationProgress=140}] AnimationProgress 0