scoreboard players add @s AnimationProgress 1

data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-90.0f,0.0f,-180.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{Head:[-90.0f,0.0f,-180.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=right_arm,limit=1] {Pose:{Head:[-90.0f,0.0f,-180.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=left_arm,limit=1] {Pose:{Head:[-90.0f,0.0f,-180.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=tail,limit=1] {Pose:{Head:[-90.0f,0.0f,-180.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=right_leg,limit=1] {Pose:{Head:[-90.0f,0.0f,-180.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=left_leg,limit=1] {Pose:{Head:[-90.0f,0.0f,-180.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run data merge entity @e[tag=this_model,tag=gold_bone,limit=1] {Pose:{Head:[0.0f,0.01f,-180.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProgress=38..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=41..43}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=55..60}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProgress=71..80}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=150..160}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=176..180}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 8
execute if entity @s[scores={AnimationProgress=181..185}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 8
execute if entity @s[scores={AnimationProgress=196..200}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 12
execute if entity @s[scores={AnimationProgress=221..225}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 12
execute if entity @s[scores={AnimationProgress=240..245}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=246..249}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=261..270}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=281..285}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=286..290}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=291..295}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=296..300}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=297..299}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=300..302}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=305..307}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=308..310}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=317..319}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=320..322}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=325..327}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=329..330}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=331..340}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProgress=21..30}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProgress=71..80}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProgress=156..160}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 8
execute if entity @s[scores={AnimationProgress=181..185}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 8
execute if entity @s[scores={AnimationProgress=196..200}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 16
execute if entity @s[scores={AnimationProgress=251..255}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 16
execute if entity @s[scores={AnimationProgress=331..340}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProgress=21..30}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=71..80}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=331..340}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1]
execute if entity @s[scores={AnimationProgress=81..85}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=86..95}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=96..105}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=106..115}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=116..125}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=126..135}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=136..145}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=146..155}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=156..165}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProgress=166..175}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProgress=176..180}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute store result score #temp Time run data get entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=6..10}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=81..85}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=86..95}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=96..105}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=106..115}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=116..125}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=126..135}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=136..140}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=186..190}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=191..195}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=196..200}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=251..255}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=256..260}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=261..265}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=301..305}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=306..315}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=316..325}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=326..335}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=336..340}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=331..340}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=6..10}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=81..85}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=86..95}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=96..105}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=106..115}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=116..125}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=126..135}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=136..140}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=186..190}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=191..195}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=196..200}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=251..255}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=256..260}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=261..265}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=301..305}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=306..315}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=316..325}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=326..335}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=336..340}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=331..340}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=6..10}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=81..85}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=86..95}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=96..105}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=106..115}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=116..125}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=126..135}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=136..140}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=186..190}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=191..195}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=256..260}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=261..265}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=301..305}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=306..315}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=316..325}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=326..335}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=336..340}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=331..340}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..10}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=6..10}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=81..85}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=86..95}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=96..105}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=106..115}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=116..125}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=126..135}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=136..140}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=186..190}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=191..195}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=256..260}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=261..265}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=301..305}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=306..315}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=316..325}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=326..335}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProgress=336..340}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProgress=331..340}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @e[tag=this_model,tag=gold_bone,limit=1] Pose.Head[2]
execute if entity @s[scores={AnimationProgress=186..220}] store result entity @e[tag=this_model,tag=gold_bone,limit=1] Pose.Head[2] float 1 run scoreboard players remove #temp Time 18
scoreboard players reset #temp Time

execute at @s[scores={AnimationProgress=1..5}] run teleport @s ^ ^-0.4 ^0.1
execute at @s[scores={AnimationProgress=6..10}] run teleport @s ^ ^ ^0.1
execute at @s[scores={AnimationProgress=21..30}] run teleport @s ^ ^-0.05 ^-0.02
execute at @s[scores={AnimationProgress=71..80}] run teleport @s ^ ^0.05 ^0.02
execute at @s[scores={AnimationProgress=81..90}] run teleport @s ^ ^ ^0.1 ~2 ~
execute at @s[scores={AnimationProgress=91..130}] run teleport @s ^ ^ ^0.1 ~-6 ~
execute at @s[scores={AnimationProgress=131..140}] run teleport @s ^ ^ ^0.05 ~-6 ~
execute at @s[scores={AnimationProgress=131..140}] run teleport @s ~ ~ ~ ~1 ~
execute at @s[scores={AnimationProgress=156..160}] run teleport @s ^ ^-0.1 ^-0.04
execute at @s[scores={AnimationProgress=181..185}] run teleport @s ^ ^0.1 ^0.04
execute at @s[scores={AnimationProgress=181..185}] run teleport @s ~ ~ ~ ~18 ~
execute at @s[scores={AnimationProgress=186..190}] run teleport @s ^ ^ ^0.1
execute at @s[scores={AnimationProgress=191..195}] run teleport @s ~ ~ ~ ~-36 ~
execute at @s[scores={AnimationProgress=196..200}] run teleport @s ^ ^-0.15 ^-0.13
execute at @s[scores={AnimationProgress=251..255}] run teleport @s ^ ^0.15 ^0.13
execute at @s[scores={AnimationProgress=255}] run teleport @s ~ ~ ~ ~10 ~
execute at @s[scores={AnimationProgress=256..265}] run teleport @s ^ ^-0.05 ^0.1
execute at @s[scores={AnimationProgress=266}] run teleport @s ~ ~ ~ ~-10 ~
execute at @s[scores={AnimationProgress=300..309}] run teleport @s ^ ^0.05 ^0.1
execute at @s[scores={AnimationProgress=310..330}] run teleport @s ^ ^ ^0.1
execute at @s[scores={AnimationProgress=331..340}] run teleport @s ^ ^0.2 ^0.1
data modify entity @s Rotation[1] set from entity @s Pose.Head[0]
execute at @s unless entity @s[scores={AnimationProgress=181..230}] run teleport @e[tag=this_model,tag=gold_bone,limit=1] ^ ^0.05 ^0.3 ~ ~
execute if entity @s[scores={AnimationProgress=181}] as @e[tag=this_model,tag=gold_bone,limit=1] at @s run teleport @s ^ ^ ^ ~5 ~
execute if entity @s[scores={AnimationProgress=181..205}] as @e[tag=this_model,tag=gold_bone,limit=1] at @s run teleport @s ^-0.03 ^-0.1 ^ ~ ~
execute if entity @s[scores={AnimationProgress=206..230}] as @e[tag=this_model,tag=gold_bone,limit=1] at @s run teleport @s ^-0.03 ^0.2 ^ ~ ~
data modify entity @s Rotation[1] set value 0f
execute at @s run teleport @e[tag=this_model,tag=body,limit=1] ^ ^ ^ ~ ~
execute as @e[tag=this_model,tag=body,limit=1] store result entity @s Rotation[1] float -1 run data get entity @s Pose.Head[0]
execute at @e[tag=this_model,tag=body,limit=1] run teleport @e[tag=this_model,tag=right_arm,limit=1] ^0.2 ^0.1 ^-0.2 ~ ~
execute at @e[tag=this_model,tag=body,limit=1] run teleport @e[tag=this_model,tag=left_arm,limit=1] ^-0.2 ^0.1 ^-0.2 ~ ~
execute at @e[tag=this_model,tag=body,limit=1] run teleport @e[tag=this_model,tag=tail,limit=1] ^ ^ ^-1 ~ ~
execute at @e[tag=this_model,tag=body,limit=1] run teleport @e[tag=this_model,tag=right_leg,limit=1] ^0.275 ^ ^-0.8 ~ ~
execute at @e[tag=this_model,tag=body,limit=1] run teleport @e[tag=this_model,tag=left_leg,limit=1] ^-0.275 ^ ^-0.8 ~ ~

data modify entity @s[scores={AnimationProgress=38}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.bark
data modify entity @s[scores={AnimationProgress=42}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.default
data modify entity @s[scores={AnimationProgress=145}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.bark
execute if entity @s[scores={AnimationProgress=145}] as @e[tag=this_model,tag=gold_bone,limit=1] run data modify entity @s ArmorItems[3].id set from entity @s ArmorItems[3].tag.visible
data modify entity @s[scores={AnimationProgress=185}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.default
data modify entity @s[scores={AnimationProgress=200}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.bark
data modify entity @s[scores={AnimationProgress=220}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.default
execute if entity @s[scores={AnimationProgress=225}] as @e[tag=this_model,tag=gold_bone,limit=1] run data modify entity @s ArmorItems[3].id set from entity @s ArmorItems[3].tag.invisible
data modify entity @s[scores={AnimationProgress=240}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.tongue_out_side
data modify entity @s[scores={AnimationProgress=250}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.default
data modify entity @s[scores={AnimationProgress=278}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.tongue_out
data modify entity @s[scores={AnimationProgress=297}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.bark
data modify entity @s[scores={AnimationProgress=302}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.default
data modify entity @s[scores={AnimationProgress=305}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.bark
data modify entity @s[scores={AnimationProgress=310}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.default
data modify entity @s[scores={AnimationProgress=317}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.bark
data modify entity @s[scores={AnimationProgress=322}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.default
data modify entity @s[scores={AnimationProgress=325}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.bark
data modify entity @s[scores={AnimationProgress=330}] ArmorItems[3] merge from entity @s ArmorItems[3].tag.variants.default
execute if entity @s[scores={AnimationProgress=40}] run playsound luigis_mansion_3ds_remake:entity.polterpup.first_bark neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=60}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=65}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=70}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=75}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=80}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=85}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=90}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=95}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=100}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=105}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=110}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=115}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=120}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProgress=140}] run playsound luigis_mansion_3ds_remake:entity.polterpup.search neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=160}] run playsound luigis_mansion_3ds_remake:entity.polterpup.playful_growl neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=180}] run playsound luigis_mansion_3ds_remake:entity.polterpup.playful_growl2 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=200}] run playsound luigis_mansion_3ds_remake:entity.polterpup.playful_growl2 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=220}] run playsound luigis_mansion_3ds_remake:entity.polterpup.swallow neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=240}] run playsound luigis_mansion_3ds_remake:entity.polterpup.lick neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=260}] run playsound luigis_mansion_3ds_remake:entity.polterpup.jump_bark neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=280}] run playsound luigis_mansion_3ds_remake:entity.polterpup.lick2 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=300}] run playsound luigis_mansion_3ds_remake:entity.polterpup.last_bark neutral @a[tag=same_room] ~ ~ ~ 1

tag @s[scores={AnimationProgress=340..}] add remove_from_existence
scoreboard players set @s[scores={AnimationProgress=340..}] AnimationProgress 0