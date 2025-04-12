scoreboard players add @s AnimationProgress 1
tag @s[scores={AnimationProgress=1}] add reset_rotation
tag @s remove new_poltergust_grabbed
tag @s remove poltergust_grabbed
tag @s remove keep_poltergust_grabbed
execute unless entity @s[scores={AnimationProgress=230..458}] unless entity @s[scores={AnimationProgress=858..926}] run tag @s add new_poltergust_grabbed
execute unless entity @s[scores={AnimationProgress=230..458}] unless entity @s[scores={AnimationProgress=858..926}] run tag @s add poltergust_grabbed
execute unless entity @s[scores={AnimationProgress=230..458}] unless entity @s[scores={AnimationProgress=858..926}] run tag @s add keep_poltergust_grabbed
scoreboard players set @s Sound 1
tag @s[scores={AnimationProgress=978}] remove reset_rotation