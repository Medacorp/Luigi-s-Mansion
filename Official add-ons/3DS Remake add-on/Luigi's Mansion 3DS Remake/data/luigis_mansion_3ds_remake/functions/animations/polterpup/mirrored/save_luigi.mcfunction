scoreboard players add @s AnimationProg 1

data merge entity @s[scores={AnimationProg=1}] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=body,limit=1] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=right_arm,limit=1] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=left_arm,limit=1] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=tail,limit=1] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=right_leg,limit=1] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=left_leg,limit=1] {Pose:{Head:[-90.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProg=1}] run data merge entity @e[tag=this_model,tag=gold_bone,limit=1] {Pose:{Head:[0.0f,0.01f,0.0f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=38..40}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=41..43}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=55..60}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 1
execute if entity @s[scores={AnimationProg=71..80}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=150..160}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=176..180}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 8
execute if entity @s[scores={AnimationProg=181..185}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 8
execute if entity @s[scores={AnimationProg=196..200}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 12
execute if entity @s[scores={AnimationProg=221..225}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 12
execute if entity @s[scores={AnimationProg=240..245}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=246..249}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=261..270}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProg=281..285}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=286..290}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=291..295}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=296..300}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=297..299}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=300..302}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=305..307}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=308..310}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=317..319}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=320..322}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=325..327}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=329..330}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=331..340}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=21..30}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 4
execute if entity @s[scores={AnimationProg=71..80}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 4
execute if entity @s[scores={AnimationProg=156..160}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 8
execute if entity @s[scores={AnimationProg=181..185}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 8
execute if entity @s[scores={AnimationProg=196..200}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 16
execute if entity @s[scores={AnimationProg=251..255}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 16
execute if entity @s[scores={AnimationProg=331..340}] store result entity @e[tag=this_model,tag=body,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=21..30}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=71..80}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=331..340}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1]
execute if entity @s[scores={AnimationProg=81..85}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=86..95}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=96..105}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=106..115}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=116..125}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=126..135}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=136..145}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=146..155}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=156..165}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute if entity @s[scores={AnimationProg=166..175}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players remove #temp Time 2
execute if entity @s[scores={AnimationProg=176..180}] store result entity @e[tag=this_model,tag=tail,limit=1] Pose.Head[1] float 1 run scoreboard players add #temp Time 2
execute store result score #temp Time run data get entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=1..5}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=6..10}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=81..85}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=86..95}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=96..105}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=106..115}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=116..125}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=126..135}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=136..140}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=186..190}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=191..195}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=196..200}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=251..255}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=256..260}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=261..265}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=301..305}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=306..315}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=316..325}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=326..335}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=336..340}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=331..340}] store result entity @e[tag=this_model,tag=left_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=1..5}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=6..10}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=81..85}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=86..95}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=96..105}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=106..115}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=116..125}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=126..135}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=136..140}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=186..190}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=191..195}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=196..200}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=251..255}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=256..260}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=261..265}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=301..305}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=306..315}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=316..325}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=326..335}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=336..340}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=331..340}] store result entity @e[tag=this_model,tag=right_arm,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=1..5}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=6..10}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=81..85}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=86..95}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=96..105}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=106..115}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=116..125}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=126..135}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=136..140}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=186..190}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=191..195}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=256..260}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=261..265}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=301..305}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=306..315}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=316..325}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=326..335}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=336..340}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=331..340}] store result entity @e[tag=this_model,tag=left_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0]
execute if entity @s[scores={AnimationProg=1..10}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute if entity @s[scores={AnimationProg=1..5}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=6..10}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=81..85}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=86..95}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=96..105}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=106..115}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=116..125}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=126..135}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=136..140}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=186..190}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=191..195}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=256..260}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=261..265}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=301..305}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=306..315}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=316..325}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=326..335}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players remove #temp Time 5
execute if entity @s[scores={AnimationProg=336..340}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 5
execute if entity @s[scores={AnimationProg=331..340}] store result entity @e[tag=this_model,tag=right_leg,limit=1] Pose.Head[0] float 1 run scoreboard players add #temp Time 9
execute store result score #temp Time run data get entity @e[tag=this_model,tag=gold_bone,limit=1] Pose.Head[2]
execute if entity @s[scores={AnimationProg=186..220}] store result entity @e[tag=this_model,tag=gold_bone,limit=1] Pose.Head[2] float 1 run scoreboard players add #temp Time 18
scoreboard players reset #temp Time

execute at @s[scores={AnimationProg=1..5}] run teleport @s ^ ^0.4 ^0.1
execute at @s[scores={AnimationProg=6..10}] run teleport @s ^ ^ ^0.1
execute at @s[scores={AnimationProg=21..30}] run teleport @s ^ ^0.05 ^-0.02
execute at @s[scores={AnimationProg=71..80}] run teleport @s ^ ^-0.05 ^0.02
execute at @s[scores={AnimationProg=81..90}] run teleport @s ^ ^ ^0.1 ~-2 ~
execute at @s[scores={AnimationProg=91..130}] run teleport @s ^ ^ ^0.1 ~6 ~
execute at @s[scores={AnimationProg=131..140}] run teleport @s ^ ^ ^0.05 ~6 ~
execute at @s[scores={AnimationProg=131..140}] run teleport @s ~ ~ ~ ~-1 ~
execute at @s[scores={AnimationProg=156..160}] run teleport @s ^ ^0.1 ^-0.04
execute at @s[scores={AnimationProg=181..185}] run teleport @s ^ ^-0.1 ^0.04
execute at @s[scores={AnimationProg=181..185}] run teleport @s ~ ~ ~ ~-18 ~
execute at @s[scores={AnimationProg=186..190}] run teleport @s ^ ^ ^0.1
execute at @s[scores={AnimationProg=191..195}] run teleport @s ~ ~ ~ ~36 ~
execute at @s[scores={AnimationProg=196..200}] run teleport @s ^ ^0.15 ^-0.13
execute at @s[scores={AnimationProg=251..255}] run teleport @s ^ ^-0.15 ^0.13
execute at @s[scores={AnimationProg=255}] run teleport @s ~ ~ ~ ~-10 ~
execute at @s[scores={AnimationProg=256..265}] run teleport @s ^ ^0.05 ^0.1
execute at @s[scores={AnimationProg=266}] run teleport @s ~ ~ ~ ~10 ~
execute at @s[scores={AnimationProg=300..309}] run teleport @s ^ ^-0.05 ^0.1
execute at @s[scores={AnimationProg=310..330}] run teleport @s ^ ^ ^0.1
execute at @s[scores={AnimationProg=331..340}] run teleport @s ^ ^-0.2 ^0.1
data modify entity @s Rotation[1] set from entity @s Pose.Head[0]
execute at @s unless entity @s[scores={AnimationProg=181..230}] run teleport @e[tag=this_model,tag=gold_bone,limit=1] ^ ^-0.05 ^0.3 ~ ~
execute if entity @s[scores={AnimationProg=181}] as @e[tag=this_model,tag=gold_bone,limit=1] at @s run teleport @s ^ ^ ^ ~-5 ~
execute if entity @s[scores={AnimationProg=181..205}] as @e[tag=this_model,tag=gold_bone,limit=1] at @s run teleport @s ^0.03 ^0.1 ^ ~ ~
execute if entity @s[scores={AnimationProg=206..230}] as @e[tag=this_model,tag=gold_bone,limit=1] at @s run teleport @s ^0.03 ^-0.2 ^ ~ ~
data modify entity @s Rotation[1] set value 0f
execute at @s run teleport @e[tag=this_model,tag=body,limit=1] ^ ^ ^ ~ ~
execute as @e[tag=this_model,tag=body,limit=1] run data modify entity @s Rotation[1] set from entity @s Pose.Head[0]
execute at @e[tag=this_model,tag=body,limit=1] run teleport @e[tag=this_model,tag=right_arm,limit=1] ^-0.2 ^-0.1 ^-0.2 ~ ~
execute at @e[tag=this_model,tag=body,limit=1] run teleport @e[tag=this_model,tag=left_arm,limit=1] ^0.2 ^-0.1 ^-0.2 ~ ~
execute at @e[tag=this_model,tag=body,limit=1] run teleport @e[tag=this_model,tag=tail,limit=1] ^ ^ ^-1 ~ ~
execute at @e[tag=this_model,tag=body,limit=1] run teleport @e[tag=this_model,tag=right_leg,limit=1] ^-0.275 ^ ^-0.8 ~ ~
execute at @e[tag=this_model,tag=body,limit=1] run teleport @e[tag=this_model,tag=left_leg,limit=1] ^0.275 ^ ^-0.8 ~ ~

data modify entity @s[scores={AnimationProg=38}] ArmorItems[3].tag merge value {CustomModelData:152}
data modify entity @s[scores={AnimationProg=42}] ArmorItems[3].tag merge value {CustomModelData:149}
data modify entity @s[scores={AnimationProg=145}] ArmorItems[3].tag merge value {CustomModelData:152}
execute if entity @s[scores={AnimationProg=145}] run data modify entity @e[tag=this_model,tag=gold_bone,limit=1] ArmorItems[3] set value {id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:5,CustomModelData:33}}
data modify entity @s[scores={AnimationProg=185}] ArmorItems[3].tag merge value {CustomModelData:149}
data modify entity @s[scores={AnimationProg=200}] ArmorItems[3].tag merge value {CustomModelData:152}
data modify entity @s[scores={AnimationProg=220}] ArmorItems[3].tag merge value {CustomModelData:149}
execute if entity @s[scores={AnimationProg=225}] run data modify entity @e[tag=this_model,tag=gold_bone,limit=1] ArmorItems[3] set value {}
data modify entity @s[scores={AnimationProg=240}] ArmorItems[3].tag merge value {Damage:3,CustomModelData:153}
data modify entity @s[scores={AnimationProg=250}] ArmorItems[3].tag merge value {Damage:1,CustomModelData:149}
data modify entity @s[scores={AnimationProg=278}] ArmorItems[3].tag merge value {CustomModelData:153}
data modify entity @s[scores={AnimationProg=297}] ArmorItems[3].tag merge value {CustomModelData:152}
data modify entity @s[scores={AnimationProg=302}] ArmorItems[3].tag merge value {CustomModelData:149}
data modify entity @s[scores={AnimationProg=305}] ArmorItems[3].tag merge value {CustomModelData:152}
data modify entity @s[scores={AnimationProg=310}] ArmorItems[3].tag merge value {CustomModelData:149}
data modify entity @s[scores={AnimationProg=317}] ArmorItems[3].tag merge value {CustomModelData:152}
data modify entity @s[scores={AnimationProg=322}] ArmorItems[3].tag merge value {CustomModelData:149}
data modify entity @s[scores={AnimationProg=325}] ArmorItems[3].tag merge value {CustomModelData:152}
data modify entity @s[scores={AnimationProg=330}] ArmorItems[3].tag merge value {CustomModelData:149}
execute if entity @s[scores={AnimationProg=40}] run playsound luigis_mansion_3ds_remake:entity.polterpup.first_bark neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=60}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProg=65}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProg=70}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProg=75}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProg=80}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProg=85}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProg=90}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProg=95}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProg=100}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProg=105}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProg=110}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProg=115}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProg=120}] run playsound luigis_mansion_3ds_remake:entity.polterpup.sniff neutral @a[tag=same_room] ~ ~ ~ 0.5
execute if entity @s[scores={AnimationProg=140}] run playsound luigis_mansion_3ds_remake:entity.polterpup.search neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=160}] run playsound luigis_mansion_3ds_remake:entity.polterpup.playful_growl neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=180}] run playsound luigis_mansion_3ds_remake:entity.polterpup.playful_growl2 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=200}] run playsound luigis_mansion_3ds_remake:entity.polterpup.playful_growl2 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=220}] run playsound luigis_mansion_3ds_remake:entity.polterpup.swallow neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=240}] run playsound luigis_mansion_3ds_remake:entity.polterpup.lick neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=260}] run playsound luigis_mansion_3ds_remake:entity.polterpup.jump_bark neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=280}] run playsound luigis_mansion_3ds_remake:entity.polterpup.lick2 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProg=300}] run playsound luigis_mansion_3ds_remake:entity.polterpup.last_bark neutral @a[tag=same_room] ~ ~ ~ 1

tag @s[scores={AnimationProg=340..}] add remove_from_existence
scoreboard players set @s[scores={AnimationProg=340..}] AnimationProg 0