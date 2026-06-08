scoreboard players add @s AnimationProgress 1
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
execute if entity @s[scores={AnimationProgress=1..4}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 5
execute if entity @s[scores={AnimationProgress=5..10}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 12
execute if entity @s[scores={AnimationProgress=11}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 35
execute if entity @s[scores={AnimationProgress=12..17}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 12
execute if entity @s[scores={AnimationProgress=18}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=19..20}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 5
execute if entity @s[scores={AnimationProgress=31}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 5
execute if entity @s[scores={AnimationProgress=32}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=33}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 17
execute if entity @s[scores={AnimationProgress=34}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 25
execute if entity @s[scores={AnimationProgress=35}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 32
execute if entity @s[scores={AnimationProgress=36}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=37}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 47
execute if entity @s[scores={AnimationProgress=38}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=39}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 77
execute if entity @s[scores={AnimationProgress=40..41}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 67
execute if entity @s[scores={AnimationProgress=42}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 62
execute if entity @s[scores={AnimationProgress=43}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 55
execute if entity @s[scores={AnimationProgress=44}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=45}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=46}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 32
execute if entity @s[scores={AnimationProgress=47}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 25
execute if entity @s[scores={AnimationProgress=48}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 17
execute if entity @s[scores={AnimationProgress=49}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=50}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 5
execute if entity @s[scores={AnimationProgress=71..72}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 25
execute if entity @s[scores={AnimationProgress=73}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=74}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 75
execute if entity @s[scores={AnimationProgress=75..76}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 100
execute if entity @s[scores={AnimationProgress=77}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 75
execute if entity @s[scores={AnimationProgress=78}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=79..80}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 25
execute if entity @s[scores={AnimationProgress=101}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 5
execute if entity @s[scores={AnimationProgress=102}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 17
execute if entity @s[scores={AnimationProgress=103}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 27
execute if entity @s[scores={AnimationProgress=104}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 37
execute if entity @s[scores={AnimationProgress=105..106}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=107}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 37
execute if entity @s[scores={AnimationProgress=108}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 27
execute if entity @s[scores={AnimationProgress=109}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 17
execute if entity @s[scores={AnimationProgress=110}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 5
execute if entity @s[scores={AnimationProgress=131}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 12
execute if entity @s[scores={AnimationProgress=132..139}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 25
execute if entity @s[scores={AnimationProgress=140}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 12
execute if entity @s[scores={AnimationProgress=1..4}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 5
execute if entity @s[scores={AnimationProgress=5..10}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 12
execute if entity @s[scores={AnimationProgress=11}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 35
execute if entity @s[scores={AnimationProgress=12..17}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 12
execute if entity @s[scores={AnimationProgress=18}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=19..20}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 5
execute if entity @s[scores={AnimationProgress=31}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 5
execute if entity @s[scores={AnimationProgress=32}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=33}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 17
execute if entity @s[scores={AnimationProgress=34}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 25
execute if entity @s[scores={AnimationProgress=35}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 32
execute if entity @s[scores={AnimationProgress=36}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=37}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 47
execute if entity @s[scores={AnimationProgress=38}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=39}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 77
execute if entity @s[scores={AnimationProgress=40..41}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 67
execute if entity @s[scores={AnimationProgress=42}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 62
execute if entity @s[scores={AnimationProgress=43}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 55
execute if entity @s[scores={AnimationProgress=44}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=45}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 40
execute if entity @s[scores={AnimationProgress=46}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 32
execute if entity @s[scores={AnimationProgress=47}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 25
execute if entity @s[scores={AnimationProgress=48}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 17
execute if entity @s[scores={AnimationProgress=49}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=50}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 5
execute if entity @s[scores={AnimationProgress=71..72}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 25
execute if entity @s[scores={AnimationProgress=73}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=74}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 75
execute if entity @s[scores={AnimationProgress=75..76}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 100
execute if entity @s[scores={AnimationProgress=77}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 75
execute if entity @s[scores={AnimationProgress=78}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=79..80}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 25
execute if entity @s[scores={AnimationProgress=101}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 5
execute if entity @s[scores={AnimationProgress=102}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 17
execute if entity @s[scores={AnimationProgress=103}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 27
execute if entity @s[scores={AnimationProgress=104}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 37
execute if entity @s[scores={AnimationProgress=105..106}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=107}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 37
execute if entity @s[scores={AnimationProgress=108}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 27
execute if entity @s[scores={AnimationProgress=109}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 17
execute if entity @s[scores={AnimationProgress=110}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 5
execute if entity @s[scores={AnimationProgress=131}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 12
execute if entity @s[scores={AnimationProgress=132..139}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 25
execute if entity @s[scores={AnimationProgress=140}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 12
execute if entity @s[scores={AnimationProgress=1}] run scoreboard players set @s AnimationRotationX 0
execute if entity @s[scores={AnimationProgress=2}] run scoreboard players set @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=3}] run scoreboard players set @s AnimationRotationX 5
execute if entity @s[scores={AnimationProgress=4}] run scoreboard players set @s AnimationRotationX 7
execute if entity @s[scores={AnimationProgress=5}] run scoreboard players set @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=6}] run scoreboard players set @s AnimationRotationX 12
execute if entity @s[scores={AnimationProgress=7}] run scoreboard players set @s AnimationRotationX 15
execute if entity @s[scores={AnimationProgress=8}] run scoreboard players set @s AnimationRotationX 17
execute if entity @s[scores={AnimationProgress=9}] run scoreboard players set @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=10}] run scoreboard players set @s AnimationRotationX 22
execute if entity @s[scores={AnimationProgress=11}] run scoreboard players set @s AnimationRotationX 27
execute if entity @s[scores={AnimationProgress=12}] run scoreboard players set @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=13}] run scoreboard players set @s AnimationRotationX 32
execute if entity @s[scores={AnimationProgress=14}] run scoreboard players set @s AnimationRotationX 35
execute if entity @s[scores={AnimationProgress=15}] run scoreboard players set @s AnimationRotationX 37
execute if entity @s[scores={AnimationProgress=16}] run scoreboard players set @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=17}] run scoreboard players set @s AnimationRotationX 42
execute if entity @s[scores={AnimationProgress=18}] run scoreboard players set @s AnimationRotationX 45
execute if entity @s[scores={AnimationProgress=19}] run scoreboard players set @s AnimationRotationX 47
execute if entity @s[scores={AnimationProgress=20..30}] run scoreboard players set @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=31}] run scoreboard players set @s AnimationRotationX 45
execute if entity @s[scores={AnimationProgress=32}] run scoreboard players set @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=33}] run scoreboard players set @s AnimationRotationX 35
execute if entity @s[scores={AnimationProgress=34}] run scoreboard players set @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=35}] run scoreboard players set @s AnimationRotationX 25
execute if entity @s[scores={AnimationProgress=36}] run scoreboard players set @s AnimationRotationX 17
execute if entity @s[scores={AnimationProgress=37}] run scoreboard players set @s AnimationRotationX 5
execute if entity @s[scores={AnimationProgress=38}] run scoreboard players set @s AnimationRotationX -5
execute if entity @s[scores={AnimationProgress=39}] run scoreboard players set @s AnimationRotationX -15
execute if entity @s[scores={AnimationProgress=40}] run scoreboard players set @s AnimationRotationX -25
execute if entity @s[scores={AnimationProgress=41}] run scoreboard players set @s AnimationRotationX -40
execute if entity @s[scores={AnimationProgress=42}] run scoreboard players set @s AnimationRotationX -50
execute if entity @s[scores={AnimationProgress=43}] run scoreboard players set @s AnimationRotationX -60
execute if entity @s[scores={AnimationProgress=44}] run scoreboard players set @s AnimationRotationX -67
execute if entity @s[scores={AnimationProgress=45}] run scoreboard players set @s AnimationRotationX -75
execute if entity @s[scores={AnimationProgress=46}] run scoreboard players set @s AnimationRotationX -80
execute if entity @s[scores={AnimationProgress=47}] run scoreboard players set @s AnimationRotationX -85
execute if entity @s[scores={AnimationProgress=48}] run scoreboard players set @s AnimationRotationX -90
execute if entity @s[scores={AnimationProgress=49}] run scoreboard players set @s AnimationRotationX -95
execute if entity @s[scores={AnimationProgress=50..70}] run scoreboard players set @s AnimationRotationX -100
execute if entity @s[scores={AnimationProgress=71}] run scoreboard players set @s AnimationRotationX -95
execute if entity @s[scores={AnimationProgress=72}] run scoreboard players set @s AnimationRotationX -90
execute if entity @s[scores={AnimationProgress=73}] run scoreboard players set @s AnimationRotationX -85
execute if entity @s[scores={AnimationProgress=74}] run scoreboard players set @s AnimationRotationX -80
execute if entity @s[scores={AnimationProgress=75}] run scoreboard players set @s AnimationRotationX -75
execute if entity @s[scores={AnimationProgress=76}] run scoreboard players set @s AnimationRotationX -70
execute if entity @s[scores={AnimationProgress=77}] run scoreboard players set @s AnimationRotationX -65
execute if entity @s[scores={AnimationProgress=78}] run scoreboard players set @s AnimationRotationX -60
execute if entity @s[scores={AnimationProgress=79}] run scoreboard players set @s AnimationRotationX -55
execute if entity @s[scores={AnimationProgress=80}] run scoreboard players set @s AnimationRotationX -50
execute if entity @s[scores={AnimationProgress=81}] run scoreboard players set @s AnimationRotationX -45
execute if entity @s[scores={AnimationProgress=82}] run scoreboard players set @s AnimationRotationX -40
execute if entity @s[scores={AnimationProgress=83}] run scoreboard players set @s AnimationRotationX -35
execute if entity @s[scores={AnimationProgress=84}] run scoreboard players set @s AnimationRotationX -30
execute if entity @s[scores={AnimationProgress=85}] run scoreboard players set @s AnimationRotationX -25
execute if entity @s[scores={AnimationProgress=86}] run scoreboard players set @s AnimationRotationX -20
execute if entity @s[scores={AnimationProgress=87}] run scoreboard players set @s AnimationRotationX -15
execute if entity @s[scores={AnimationProgress=88}] run scoreboard players set @s AnimationRotationX -10
execute if entity @s[scores={AnimationProgress=89}] run scoreboard players set @s AnimationRotationX -5
execute if entity @s[scores={AnimationProgress=90}] run scoreboard players set @s AnimationRotationX 5
execute if entity @s[scores={AnimationProgress=91}] run scoreboard players set @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=92}] run scoreboard players set @s AnimationRotationX 15
execute if entity @s[scores={AnimationProgress=93}] run scoreboard players set @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=94}] run scoreboard players set @s AnimationRotationX 25
execute if entity @s[scores={AnimationProgress=95}] run scoreboard players set @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=96}] run scoreboard players set @s AnimationRotationX 35
execute if entity @s[scores={AnimationProgress=97}] run scoreboard players set @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=98}] run scoreboard players set @s AnimationRotationX 45
execute if entity @s[scores={AnimationProgress=99..100}] run scoreboard players set @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=101}] run scoreboard players set @s AnimationRotationX 45
execute if entity @s[scores={AnimationProgress=102}] run scoreboard players set @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=103}] run scoreboard players set @s AnimationRotationX 35
execute if entity @s[scores={AnimationProgress=104}] run scoreboard players set @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=105}] run scoreboard players set @s AnimationRotationX 25
execute if entity @s[scores={AnimationProgress=106}] run scoreboard players set @s AnimationRotationX 20
execute if entity @s[scores={AnimationProgress=107}] run scoreboard players set @s AnimationRotationX 15
execute if entity @s[scores={AnimationProgress=108}] run scoreboard players set @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=109}] run scoreboard players set @s AnimationRotationX 5
execute if entity @s[scores={AnimationProgress=110..140}] run scoreboard players set @s AnimationRotationX 0
execute at @s[scores={AnimationProgress=45..75}] run teleport @s ^ ^ ^0.125
scoreboard players set @s[scores={AnimationProgress=140}] AnimationProgress 0