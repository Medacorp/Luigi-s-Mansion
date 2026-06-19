scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -140
scoreboard players add @s[scores={AnimationProgress=106..120}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=11..20}] AnimationRotationZ 5
scoreboard players remove @s[scores={AnimationProgress=21..39}] AnimationRotationZ 40
scoreboard players remove @s[scores={AnimationProgress=40..101}] AnimationRotationZ 45
data modify entity @s[scores={AnimationProgress=1}] item merge from entity @s item.components."minecraft:custom_data".model_data.attacking
scoreboard players set @s[scores={AnimationProgress=120}] AnimationProgress 0