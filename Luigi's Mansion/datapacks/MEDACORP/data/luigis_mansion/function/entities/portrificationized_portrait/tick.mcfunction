scoreboard players add @s[tag=!suspended,tag=!done_animating] CreditsTime 1
teleport @s[tag=!suspended,tag=!done_animating] ~ ~-0.5 ~
data modify entity @s[scores={CreditsTime=20}] data.animation set value {namespace:"luigis_mansion",id:"wiggle"}
tag @s[scores={CreditsTime=1}] remove freeze_animation
execute if entity @s[scores={CreditsTime=2}] as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.fall player @s ~ ~ ~ 1 1
tag @s[scores={CreditsTime=20},tag=!done_animating] add finish_animating
teleport @s[tag=finish_animating,scores={CreditsTime=1}] ~ ~-9.5 ~
teleport @s[tag=finish_animating,scores={CreditsTime=2}] ~ ~-9 ~
teleport @s[tag=finish_animating,scores={CreditsTime=3}] ~ ~-8.5 ~
teleport @s[tag=finish_animating,scores={CreditsTime=4}] ~ ~-8 ~
teleport @s[tag=finish_animating,scores={CreditsTime=5}] ~ ~-7.5 ~
teleport @s[tag=finish_animating,scores={CreditsTime=6}] ~ ~-7 ~
teleport @s[tag=finish_animating,scores={CreditsTime=7}] ~ ~-6.5 ~
teleport @s[tag=finish_animating,scores={CreditsTime=8}] ~ ~-6 ~
teleport @s[tag=finish_animating,scores={CreditsTime=9}] ~ ~-5.5 ~
teleport @s[tag=finish_animating,scores={CreditsTime=10}] ~ ~-5 ~
teleport @s[tag=finish_animating,scores={CreditsTime=11}] ~ ~-4.5 ~
teleport @s[tag=finish_animating,scores={CreditsTime=12}] ~ ~-4 ~
teleport @s[tag=finish_animating,scores={CreditsTime=13}] ~ ~-3.5 ~
teleport @s[tag=finish_animating,scores={CreditsTime=14}] ~ ~-3 ~
teleport @s[tag=finish_animating,scores={CreditsTime=15}] ~ ~-2.5 ~
teleport @s[tag=finish_animating,scores={CreditsTime=16}] ~ ~-2 ~
teleport @s[tag=finish_animating,scores={CreditsTime=17}] ~ ~-1.5 ~
teleport @s[tag=finish_animating,scores={CreditsTime=18}] ~ ~-1 ~
teleport @s[tag=finish_animating,scores={CreditsTime=19}] ~ ~-0.5 ~
execute if entity @s[tag=finish_animating] as @a[tag=same_room] at @s run playsound luigis_mansion:furniture.painting.land player @s ~ ~ ~ 1 1
tag @s[tag=finish_animating] add done_animating
tag @s[tag=finish_animating] remove finish_animating
function luigis_mansion:animations/furniture