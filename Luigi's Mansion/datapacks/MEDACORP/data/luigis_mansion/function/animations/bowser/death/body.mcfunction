scoreboard players add @s AnimationProgress 1
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=91}] ^ ^-0.4 ^0.667
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=92}] ^ ^-0.8 ^1.333
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=93}] ^ ^-1.2 ^2
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=94}] ^ ^-1.6 ^2.667
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=95}] ^ ^-2 ^3.333
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=96}] ^ ^-2.4 ^4.667
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=97}] ^ ^-2.8 ^4.667
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=98}] ^ ^-3.2 ^5.333
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=99}] ^ ^-3.6 ^6
teleport @s[tag=!flipped_gravity,scores={AnimationProgress=100..}] ^ ^-4 ^7.333
teleport @s[tag=flipped_gravity,scores={AnimationProgress=91}] ^ ^0.4 ^0.667
teleport @s[tag=flipped_gravity,scores={AnimationProgress=92}] ^ ^0.8 ^1.333
teleport @s[tag=flipped_gravity,scores={AnimationProgress=93}] ^ ^1.2 ^2
teleport @s[tag=flipped_gravity,scores={AnimationProgress=94}] ^ ^1.6 ^2.667
teleport @s[tag=flipped_gravity,scores={AnimationProgress=95}] ^ ^2 ^3.333
teleport @s[tag=flipped_gravity,scores={AnimationProgress=96}] ^ ^2.4 ^4.667
teleport @s[tag=flipped_gravity,scores={AnimationProgress=97}] ^ ^2.8 ^4.667
teleport @s[tag=flipped_gravity,scores={AnimationProgress=98}] ^ ^3.2 ^5.333
teleport @s[tag=flipped_gravity,scores={AnimationProgress=99}] ^ ^3.6 ^6
teleport @s[tag=flipped_gravity,scores={AnimationProgress=100..}] ^ ^4 ^7.333
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
scoreboard players add @s[scores={AnimationProgress=91..100}] AnimationRotationX 70
execute if entity @s[scores={AnimationProgress=100}] run playsound luigis_mansion:entity.bowser.land hostile @a[tag=same_room] ~ ~ ~ 3