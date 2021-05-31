function #luigis_mansion:entities/ghost/disappear
tag @s remove fleeing
tag @s remove hurt
tag @s remove hurt_animation
tag @s remove vanish
tag @s remove disappear_next_tick
tag @s remove disappear
tag @s remove stunable
scoreboard players set @s VulnerableTime 0
scoreboard players set @s StunTime 0
scoreboard players set @s ActionTime 0
scoreboard players set @s AnimationProg 0
data modify entity @s ArmorItems[3].tag merge value {attacked_by:[]}
playsound luigis_mansion:entity.ghost.disappear hostile @a[tag=same_room] ~ ~ ~ 1