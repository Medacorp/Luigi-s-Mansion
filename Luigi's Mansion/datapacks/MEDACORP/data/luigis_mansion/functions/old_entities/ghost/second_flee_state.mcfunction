scoreboard players add @s SecondFleeState 1
scoreboard players set @s[scores={SecondFleeState=1}] AnimationProgress 0
scoreboard players set @s[scores={SecondFleeState=1}] ActionTime 0
execute at @s[scores={SecondFleeState=50..}] as @a[tag=!spectator,tag=vacuuming_this_ghost] run function luigis_mansion:entities/player/animation/set/knockback/large