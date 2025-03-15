scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1},tag=!flipped_gravity] {Pose:{Head:[0.0f,0.0f,0.01f]}}
data merge entity @s[scores={AnimationProgress=1},tag=flipped_gravity] {Pose:{Head:[0.0f,0.0f,-180.0f]}}
data modify entity @s[scores={AnimationProgress=1}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.scared
execute store result score #temp Time run data get entity @s Pose.Head[1] 100
execute if entity @s[scores={AnimationProgress=1..4}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 50
execute if entity @s[scores={AnimationProgress=5..10}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 125
execute if entity @s[scores={AnimationProgress=11}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 350
execute if entity @s[scores={AnimationProgress=12..17}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 125
execute if entity @s[scores={AnimationProgress=18}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 100
execute if entity @s[scores={AnimationProgress=19..20}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 50
execute if entity @s[scores={AnimationProgress=31}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 50
execute if entity @s[scores={AnimationProgress=32}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 100
execute if entity @s[scores={AnimationProgress=33}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 175
execute if entity @s[scores={AnimationProgress=34}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 250
execute if entity @s[scores={AnimationProgress=35}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 325
execute if entity @s[scores={AnimationProgress=36}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 400
execute if entity @s[scores={AnimationProgress=37}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 475
execute if entity @s[scores={AnimationProgress=38}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 400
execute if entity @s[scores={AnimationProgress=39}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 775
execute if entity @s[scores={AnimationProgress=40..41}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 675
execute if entity @s[scores={AnimationProgress=42}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 625
execute if entity @s[scores={AnimationProgress=43}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 550
execute if entity @s[scores={AnimationProgress=44}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 505
execute if entity @s[scores={AnimationProgress=45}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 400
execute if entity @s[scores={AnimationProgress=46}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 325
execute if entity @s[scores={AnimationProgress=47}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 250
execute if entity @s[scores={AnimationProgress=48}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 175
execute if entity @s[scores={AnimationProgress=49}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 100
execute if entity @s[scores={AnimationProgress=50}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 50
execute if entity @s[scores={AnimationProgress=71..72}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 250
execute if entity @s[scores={AnimationProgress=73}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 500
execute if entity @s[scores={AnimationProgress=74}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 750
execute if entity @s[scores={AnimationProgress=75..76}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 1000
execute if entity @s[scores={AnimationProgress=77}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 750
execute if entity @s[scores={AnimationProgress=78}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 500
execute if entity @s[scores={AnimationProgress=79..80}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 250
execute if entity @s[scores={AnimationProgress=101}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 50
execute if entity @s[scores={AnimationProgress=102}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 175
execute if entity @s[scores={AnimationProgress=103}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 275
execute if entity @s[scores={AnimationProgress=104}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 375
execute if entity @s[scores={AnimationProgress=105..106}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 500
execute if entity @s[scores={AnimationProgress=107}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 375
execute if entity @s[scores={AnimationProgress=108}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 275
execute if entity @s[scores={AnimationProgress=109}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 175
execute if entity @s[scores={AnimationProgress=110}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 50
execute if entity @s[scores={AnimationProgress=131}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 125
execute if entity @s[scores={AnimationProgress=132..139}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 250
execute if entity @s[scores={AnimationProgress=140}] unless score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 125
execute if entity @s[scores={AnimationProgress=1..4}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 50
execute if entity @s[scores={AnimationProgress=5..10}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 125
execute if entity @s[scores={AnimationProgress=11}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 350
execute if entity @s[scores={AnimationProgress=12..17}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 125
execute if entity @s[scores={AnimationProgress=18}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 100
execute if entity @s[scores={AnimationProgress=19..20}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 50
execute if entity @s[scores={AnimationProgress=31}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 50
execute if entity @s[scores={AnimationProgress=32}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 100
execute if entity @s[scores={AnimationProgress=33}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 175
execute if entity @s[scores={AnimationProgress=34}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 250
execute if entity @s[scores={AnimationProgress=35}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 325
execute if entity @s[scores={AnimationProgress=36}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 400
execute if entity @s[scores={AnimationProgress=37}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 475
execute if entity @s[scores={AnimationProgress=38}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 400
execute if entity @s[scores={AnimationProgress=39}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 775
execute if entity @s[scores={AnimationProgress=40..41}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 675
execute if entity @s[scores={AnimationProgress=42}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 625
execute if entity @s[scores={AnimationProgress=43}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 550
execute if entity @s[scores={AnimationProgress=44}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 505
execute if entity @s[scores={AnimationProgress=45}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 400
execute if entity @s[scores={AnimationProgress=46}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 325
execute if entity @s[scores={AnimationProgress=47}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 250
execute if entity @s[scores={AnimationProgress=48}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 175
execute if entity @s[scores={AnimationProgress=49}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 100
execute if entity @s[scores={AnimationProgress=50}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 50
execute if entity @s[scores={AnimationProgress=71..72}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 250
execute if entity @s[scores={AnimationProgress=73}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 500
execute if entity @s[scores={AnimationProgress=74}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 750
execute if entity @s[scores={AnimationProgress=75..76}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 1000
execute if entity @s[scores={AnimationProgress=77}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 750
execute if entity @s[scores={AnimationProgress=78}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 500
execute if entity @s[scores={AnimationProgress=79..80}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 250
execute if entity @s[scores={AnimationProgress=101}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 50
execute if entity @s[scores={AnimationProgress=102}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 175
execute if entity @s[scores={AnimationProgress=103}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 275
execute if entity @s[scores={AnimationProgress=104}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 375
execute if entity @s[scores={AnimationProgress=105..106}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 500
execute if entity @s[scores={AnimationProgress=107}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 375
execute if entity @s[scores={AnimationProgress=108}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 275
execute if entity @s[scores={AnimationProgress=109}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 175
execute if entity @s[scores={AnimationProgress=110}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players add #temp Time 50
execute if entity @s[scores={AnimationProgress=131}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 125
execute if entity @s[scores={AnimationProgress=132..139}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 250
execute if entity @s[scores={AnimationProgress=140}] if score #mirrored Selected matches 1 store result entity @s Pose.Head[1] float 0.01 run scoreboard players remove #temp Time 125
execute store result score #temp Time run data get entity @s Pose.Head[0] 20
execute if entity @s[scores={AnimationProgress=1}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 0
execute if entity @s[scores={AnimationProgress=2}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 5
execute if entity @s[scores={AnimationProgress=3}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 10
execute if entity @s[scores={AnimationProgress=4}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 15
execute if entity @s[scores={AnimationProgress=5}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 20
execute if entity @s[scores={AnimationProgress=6}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 25
execute if entity @s[scores={AnimationProgress=7}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 30
execute if entity @s[scores={AnimationProgress=8}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 35
execute if entity @s[scores={AnimationProgress=9}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 40
execute if entity @s[scores={AnimationProgress=10}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 45
execute if entity @s[scores={AnimationProgress=11}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 55
execute if entity @s[scores={AnimationProgress=12}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 60
execute if entity @s[scores={AnimationProgress=13}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 65
execute if entity @s[scores={AnimationProgress=14}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 70
execute if entity @s[scores={AnimationProgress=15}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 75
execute if entity @s[scores={AnimationProgress=16}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 80
execute if entity @s[scores={AnimationProgress=17}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 85
execute if entity @s[scores={AnimationProgress=18}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 90
execute if entity @s[scores={AnimationProgress=19}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 95
execute if entity @s[scores={AnimationProgress=20..30}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 100
execute if entity @s[scores={AnimationProgress=31}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 90
execute if entity @s[scores={AnimationProgress=32}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 80
execute if entity @s[scores={AnimationProgress=33}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 70
execute if entity @s[scores={AnimationProgress=34}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 60
execute if entity @s[scores={AnimationProgress=35}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 50
execute if entity @s[scores={AnimationProgress=36}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 35
execute if entity @s[scores={AnimationProgress=37}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 10
execute if entity @s[scores={AnimationProgress=38}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -10
execute if entity @s[scores={AnimationProgress=39}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -30
execute if entity @s[scores={AnimationProgress=40}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -50
execute if entity @s[scores={AnimationProgress=41}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -80
execute if entity @s[scores={AnimationProgress=42}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -100
execute if entity @s[scores={AnimationProgress=43}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -120
execute if entity @s[scores={AnimationProgress=44}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -135
execute if entity @s[scores={AnimationProgress=45}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -150
execute if entity @s[scores={AnimationProgress=46}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -160
execute if entity @s[scores={AnimationProgress=47}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -170
execute if entity @s[scores={AnimationProgress=48}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -180
execute if entity @s[scores={AnimationProgress=49}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -190
execute if entity @s[scores={AnimationProgress=50..70}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -200
execute if entity @s[scores={AnimationProgress=71}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -190
execute if entity @s[scores={AnimationProgress=72}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -180
execute if entity @s[scores={AnimationProgress=73}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -170
execute if entity @s[scores={AnimationProgress=74}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -160
execute if entity @s[scores={AnimationProgress=75}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -150
execute if entity @s[scores={AnimationProgress=76}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -140
execute if entity @s[scores={AnimationProgress=77}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -130
execute if entity @s[scores={AnimationProgress=78}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -120
execute if entity @s[scores={AnimationProgress=79}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -110
execute if entity @s[scores={AnimationProgress=80}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -100
execute if entity @s[scores={AnimationProgress=81}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -90
execute if entity @s[scores={AnimationProgress=82}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -80
execute if entity @s[scores={AnimationProgress=83}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -70
execute if entity @s[scores={AnimationProgress=84}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -60
execute if entity @s[scores={AnimationProgress=85}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -50
execute if entity @s[scores={AnimationProgress=86}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -40
execute if entity @s[scores={AnimationProgress=87}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -30
execute if entity @s[scores={AnimationProgress=88}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -20
execute if entity @s[scores={AnimationProgress=89}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time -10
execute if entity @s[scores={AnimationProgress=90}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 10
execute if entity @s[scores={AnimationProgress=91}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 20
execute if entity @s[scores={AnimationProgress=92}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 30
execute if entity @s[scores={AnimationProgress=93}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 40
execute if entity @s[scores={AnimationProgress=94}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 50
execute if entity @s[scores={AnimationProgress=95}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 60
execute if entity @s[scores={AnimationProgress=96}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 70
execute if entity @s[scores={AnimationProgress=97}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 80
execute if entity @s[scores={AnimationProgress=98}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 90
execute if entity @s[scores={AnimationProgress=99..100}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 100
execute if entity @s[scores={AnimationProgress=101}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 90
execute if entity @s[scores={AnimationProgress=102}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 80
execute if entity @s[scores={AnimationProgress=103}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 70
execute if entity @s[scores={AnimationProgress=104}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 60
execute if entity @s[scores={AnimationProgress=105}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 50
execute if entity @s[scores={AnimationProgress=106}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 40
execute if entity @s[scores={AnimationProgress=107}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 30
execute if entity @s[scores={AnimationProgress=108}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 20
execute if entity @s[scores={AnimationProgress=109}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 10
execute if entity @s[scores={AnimationProgress=110..140}] store result entity @s Pose.Head[0] float 0.05 run scoreboard players set #temp Time 0
scoreboard players reset #temp Time
execute at @s[scores={AnimationProgress=45..75}] run teleport @s ^ ^ ^0.125
scoreboard players set @s[scores={AnimationProgress=140}] AnimationProgress 0