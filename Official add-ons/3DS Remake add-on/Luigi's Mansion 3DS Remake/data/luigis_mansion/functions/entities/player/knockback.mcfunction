summon minecraft:marker ^ ^-1 ^ {Tags:["temp","remove_from_existence"]}
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] double 0.01 run scoreboard players get @s KnockbackX
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] double 0.01 run scoreboard players get @s KnockbackZ

execute at @s[scores={KnockbackTime=10,KnockbackType=1,Sound=0,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_little player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=10,KnockbackType=1,Sound=0,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_little player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={KnockbackTime=10,KnockbackType=1,Sound=0},tag=!gooigi] Sound 20
execute at @s[scores={KnockbackTime=2..,KnockbackType=1}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ ~ run teleport @s ^ ^ ^ ~ ~
execute at @s[scores={KnockbackTime=1,KnockbackType=1}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~

execute at @s[scores={KnockbackType=2..3}] run function luigis_mansion:entities/player/knockback_lock_position
execute at @s[scores={KnockbackType=2..3}] run function luigis_mansion:entities/player/knockback_lock_position
execute at @s[scores={KnockbackTime=20,KnockbackType=2..3,Sound=0,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_little player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=20,KnockbackType=2..3,Sound=0,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_little player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={KnockbackTime=20,KnockbackType=2..3,Sound=0},tag=!gooigi] Sound 20
execute at @s[scores={KnockbackTime=19,KnockbackType=2..3},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-5
execute at @s[scores={KnockbackTime=18,KnockbackType=2..3},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-10
execute at @s[scores={KnockbackTime=17,KnockbackType=2..3},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-15
execute at @s[scores={KnockbackTime=16,KnockbackType=2..3},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-20
execute at @s[scores={KnockbackTime=15,KnockbackType=2..3},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-25
execute at @s[scores={KnockbackTime=14,KnockbackType=2..3},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-30
execute at @s[scores={KnockbackTime=13,KnockbackType=2..3},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-35
execute at @s[scores={KnockbackTime=12,KnockbackType=2..3},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-40
execute at @s[scores={KnockbackTime=11,KnockbackType=2..3},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-45
execute at @s[scores={KnockbackTime=10,KnockbackType=2..3},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-40
execute at @s[scores={KnockbackTime=9,KnockbackType=2..3},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-35
execute at @s[scores={KnockbackTime=8,KnockbackType=2..3},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-30
execute at @s[scores={KnockbackTime=7,KnockbackType=2..3},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-25
execute at @s[scores={KnockbackTime=6,KnockbackType=2..3},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-20
execute at @s[scores={KnockbackTime=5,KnockbackType=2..3},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-15
execute at @s[scores={KnockbackTime=4,KnockbackType=2..3},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-10
execute at @s[scores={KnockbackTime=3,KnockbackType=2..3},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-5
execute at @s[scores={KnockbackTime=19,KnockbackType=2..3},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~5
execute at @s[scores={KnockbackTime=18,KnockbackType=2..3},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~10
execute at @s[scores={KnockbackTime=17,KnockbackType=2..3},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~15
execute at @s[scores={KnockbackTime=16,KnockbackType=2..3},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~20
execute at @s[scores={KnockbackTime=15,KnockbackType=2..3},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~25
execute at @s[scores={KnockbackTime=14,KnockbackType=2..3},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~30
execute at @s[scores={KnockbackTime=13,KnockbackType=2..3},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~35
execute at @s[scores={KnockbackTime=12,KnockbackType=2..3},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~40
execute at @s[scores={KnockbackTime=11,KnockbackType=2..3},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~45
execute at @s[scores={KnockbackTime=10,KnockbackType=2..3},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~40
execute at @s[scores={KnockbackTime=9,KnockbackType=2..3},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~35
execute at @s[scores={KnockbackTime=8,KnockbackType=2..3},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~30
execute at @s[scores={KnockbackTime=7,KnockbackType=2..3},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~25
execute at @s[scores={KnockbackTime=6,KnockbackType=2..3},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~20
execute at @s[scores={KnockbackTime=5,KnockbackType=2..3},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~15
execute at @s[scores={KnockbackTime=4,KnockbackType=2..3},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~10
execute at @s[scores={KnockbackTime=3,KnockbackType=2..3},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~5
execute at @s[scores={KnockbackType=2}] rotated ~ 0 run teleport @s ^ ^ ^-0.05
execute at @s[scores={KnockbackType=3}] rotated ~ 0 run teleport @s ^ ^ ^0.05

execute at @s[scores={KnockbackTime=60,KnockbackType=4,Sound=0,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_scare.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=60,KnockbackType=4,Sound=0,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_scare.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={KnockbackTime=60,KnockbackType=4,Sound=0,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_scare.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=60,KnockbackType=4,Sound=0,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_scare.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={KnockbackTime=60,KnockbackType=4,Sound=0},tag=!gooigi] Sound 20
execute at @s[scores={KnockbackTime=40,KnockbackType=4,Sound=0,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_bounce.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=40,KnockbackType=4,Sound=0,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_bounce.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={KnockbackTime=40,KnockbackType=4,Sound=0,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_bounce.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=40,KnockbackType=4,Sound=0,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_bounce.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={KnockbackTime=40,KnockbackType=4,Sound=0},tag=!gooigi] Sound 20
execute at @s[scores={KnockbackTime=10,KnockbackType=4,Sound=0,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.recover.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=10,KnockbackType=4,Sound=0,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.recover.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={KnockbackTime=10,KnockbackType=4,Sound=0,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.recover.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=10,KnockbackType=4,Sound=0,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.recover.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={KnockbackTime=10,KnockbackType=4,Sound=0},tag=!gooigi] Sound 10
execute at @s[scores={KnockbackType=4}] run function luigis_mansion:entities/player/knockback_lock_position
execute at @s[scores={KnockbackTime=31..,KnockbackType=4}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^-0.16 ~ ~

execute at @s[scores={KnockbackTime=60,KnockbackType=5,Sound=0,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_burn player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=60,KnockbackType=5,Sound=0,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_burn player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={KnockbackTime=60,KnockbackType=5,Sound=0},tag=!gooigi] Sound 55
execute at @s[scores={KnockbackTime=21..,KnockbackType=5},tag=!gooigi] if score #mirrored Selected matches 0 run teleport @s ^ ^ ^ ~-9 ~
execute at @s[scores={KnockbackTime=21..,KnockbackType=5},tag=!gooigi] if score #mirrored Selected matches 1 run teleport @s ^ ^ ^ ~9 ~
execute at @s[scores={KnockbackTime=5,KnockbackType=5,Sound=0,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.recover.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=5,KnockbackType=5,Sound=0,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.recover.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={KnockbackTime=5,KnockbackType=5,Sound=0,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.recover.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=5,KnockbackType=5,Sound=0,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.recover.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={KnockbackTime=5,KnockbackType=5,Sound=0},tag=!gooigi] Sound 10
execute at @s[scores={KnockbackType=5},tag=gooigi] run summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute at @s[scores={KnockbackType=5},tag=gooigi] store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute at @s[scores={KnockbackType=5},tag=gooigi] store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PosY
execute at @s[scores={KnockbackType=5},tag=gooigi] store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute at @s[scores={KnockbackType=5},tag=gooigi] store result entity @e[tag=home,limit=1] Rotation[0] float 0.01 run scoreboard players get @s RotY
execute at @s[scores={KnockbackType=5},tag=gooigi] store result entity @e[tag=home,limit=1] Rotation[1] float 0.01 run scoreboard players get @s RotX
execute at @s[scores={KnockbackType=5},tag=gooigi] at @e[tag=home,limit=1] run tp @s ~ 0 ~ ~ ~
execute at @s[scores={KnockbackType=5},tag=gooigi] at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s[scores={KnockbackType=5},tag=gooigi] run kill @e[tag=home,limit=1]
scoreboard players set @s[scores={KnockbackTime=2..,KnockbackType=5},tag=gooigi] Health 1
scoreboard players set @s[scores={KnockbackTime=1,KnockbackType=5},tag=gooigi] Health 0

execute at @s[scores={KnockbackTime=40,KnockbackType=6,Sound=0,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_scare.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=40,KnockbackType=6,Sound=0,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_scare.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={KnockbackTime=40,KnockbackType=6,Sound=0,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_scare.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=40,KnockbackType=6,Sound=0,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_scare.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={KnockbackTime=40,KnockbackType=6,Sound=0},tag=!gooigi] Sound 30
execute at @s[scores={KnockbackTime=10,KnockbackType=6,Sound=0,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_soak.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=10,KnockbackType=6,Sound=0,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_soak.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={KnockbackTime=10,KnockbackType=6,Sound=0,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_soak.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=10,KnockbackType=6,Sound=0,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_soak.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={KnockbackTime=10,KnockbackType=6,Sound=0},tag=!gooigi] Sound 20
execute at @s[scores={KnockbackType=6}] run summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute at @s[scores={KnockbackType=6}] store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute at @s[scores={KnockbackType=6}] store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PosY
execute at @s[scores={KnockbackType=6}] store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute at @s[scores={KnockbackType=6}] store result entity @e[tag=home,limit=1] Rotation[0] float 0.01 run scoreboard players get @s RotY
execute at @s[scores={KnockbackType=6}] store result entity @e[tag=home,limit=1] Rotation[1] float 0.01 run scoreboard players get @s RotX
execute at @s[scores={KnockbackType=6}] at @e[tag=home,limit=1] run tp @s ~ 0 ~ ~ ~
execute at @s[scores={KnockbackType=6}] at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s[scores={KnockbackType=6}] run kill @e[tag=home,limit=1]

execute at @s[scores={KnockbackTime=80,KnockbackType=7,Sound=0,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_freeze player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=80,KnockbackType=7,Sound=0,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_freeze player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={KnockbackTime=10..,KnockbackType=7,Sound=0},tag=!gooigi] Sound 2
execute at @s[scores={KnockbackType=7}] run summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute at @s[scores={KnockbackType=7}] store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute at @s[scores={KnockbackType=7}] store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PosY
execute at @s[scores={KnockbackType=7}] store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute at @s[scores={KnockbackType=7}] store result entity @e[tag=home,limit=1] Rotation[0] float 0.01 run scoreboard players get @s RotY
execute at @s[scores={KnockbackType=7}] store result entity @e[tag=home,limit=1] Rotation[1] float 0.01 run scoreboard players get @s RotX
execute at @s[scores={KnockbackTime=10..,KnockbackType=7}] unless entity @e[tag=home,limit=1,distance=..0.1] run scoreboard players remove @s KnockbackTime 2
execute at @s[scores={KnockbackType=7}] at @e[tag=home,limit=1] run tp @s ~ 0 ~ ~ ~
execute at @s[scores={KnockbackType=7}] at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s[scores={KnockbackTime=80,KnockbackType=7}] anchored eyes run summon minecraft:armor_stand ^ ^ ^ {CustomName:'{"translate":"luigis_mansion:entity.luigi"}',Tags:["luigi_ice"],Invisible:1b,Marker:1b,Pose:{Head:[0.0f,0.0f,0.01f]},ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:47}}]}
execute at @s[scores={KnockbackTime=8..10,KnockbackType=7}] anchored eyes positioned ^ ^ ^ run tag @e[tag=luigi_ice,distance=..0.1,limit=1] add remove_from_existence
execute at @s[scores={KnockbackTime=8..10,KnockbackType=7}] anchored eyes run particle minecraft:item minecraft:diamond_pickaxe{Unbreakable:1b,Damage:4,CustomModelData:47} ^ ^ ^ 0.3 0.3 0.3 0 50 force @a[tag=same_room]
scoreboard players set @s[scores={KnockbackTime=10..,KnockbackType=7,Invulnerable=6..}] Invulnerable 5
execute at @s[scores={KnockbackTime=10..,KnockbackType=7}] run effect give @s minecraft:instant_damage 1 0 true
execute at @s[scores={KnockbackTime=10..,KnockbackType=7}] run scoreboard players set @s ForcedDamage -5
scoreboard players set @s[scores={KnockbackTime=10,KnockbackType=7}] Invulnerable 70
execute at @s[scores={KnockbackTime=8,KnockbackType=7,Sound=0,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.sigh.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=8,KnockbackType=7,Sound=0,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.sigh.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={KnockbackTime=8,KnockbackType=7,Sound=0,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.sigh.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=8,KnockbackType=7,Sound=0,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.sigh.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={KnockbackTime=8,KnockbackType=7,Sound=0},tag=!gooigi] Sound 15
execute at @s[scores={KnockbackType=7}] run kill @e[tag=home,limit=1]

execute at @s[scores={KnockbackTime=10,KnockbackType=8..9,Sound=0,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.grabbed.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=10,KnockbackType=8..9,Sound=0,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.grabbed.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={KnockbackTime=10,KnockbackType=8..9,Sound=0,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.grabbed.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=10,KnockbackType=8..9,Sound=0,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.grabbed.low_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={KnockbackTime=10,KnockbackType=10,Sound=0,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_bitten.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=10,KnockbackType=10,Sound=0,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_bitten.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={KnockbackTime=10,KnockbackType=10,Sound=0,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_bitten.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=10,KnockbackType=10,Sound=0,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_bitten.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={KnockbackType=8..10,Sound=0},tag=!gooigi] Sound 2
execute at @s[scores={KnockbackTime=10,KnockbackType=9..10}] run effect give @s minecraft:instant_damage 1 0 true
execute at @s[scores={KnockbackTime=10,KnockbackType=9}] run scoreboard players set @s ForcedDamage -1
execute at @s[scores={KnockbackTime=10,KnockbackType=10}] run scoreboard players set @s ForcedDamage 4
execute at @s[scores={KnockbackType=8..10}] run scoreboard players operation #temp GrabbedID = @s ID
execute at @s[scores={KnockbackType=8..10}] as @e[tag=ghost,scores={GrabbedID=-2147483648..}] if score @s GrabbedID = #temp GrabbedID run tag @s add this_ghost
execute if entity @e[tag=this_ghost,limit=1,scores={VulnerableTime=0}] run scoreboard players add @s[scores={KnockbackTime=1,KnockbackType=8..10}] KnockbackTime 1
execute at @s[scores={KnockbackTime=2..,KnockbackType=8..10}] store result score #temp PosX run data get entity @s Pos[0] 100
execute at @s[scores={KnockbackTime=2..,KnockbackType=8..10}] store result score #temp PosZ run data get entity @s Pos[2] 100
execute at @s[scores={KnockbackTime=2..,KnockbackType=8..10}] run scoreboard players operation #temp PosX -= @s PosX
execute at @s[scores={KnockbackTime=2..,KnockbackType=8..10}] run scoreboard players operation #temp PosZ -= @s PosZ
execute at @s[scores={KnockbackTime=2..,KnockbackType=8..10},tag=!positive_x] if score #temp PosX matches 8.. run tag @s add struggle
execute at @s[scores={KnockbackTime=2..,KnockbackType=8..10},tag=!positive_z] if score #temp PosZ matches 8.. run tag @s add struggle
execute at @s[scores={KnockbackTime=2..,KnockbackType=8..10},tag=!negative_x] if score #temp PosX matches ..-8 run tag @s add struggle
execute at @s[scores={KnockbackTime=2..,KnockbackType=8..10},tag=!negative_z] if score #temp PosZ matches ..-8 run tag @s add struggle
execute at @s[scores={KnockbackType=8..10}] if score #temp PosX matches -8..8 if score #temp PosZ matches -8..8 run tag @s add didnt_move
execute at @s[scores={KnockbackType=8..10}] run tag @s[tag=!didnt_move] remove positive_x
execute at @s[scores={KnockbackType=8..10}] run tag @s[tag=!didnt_move] remove positive_z
execute at @s[scores={KnockbackType=8..10}] run tag @s[tag=!didnt_move] remove negative_x
execute at @s[scores={KnockbackType=8..10}] run tag @s[tag=!didnt_move] remove negative_z
execute at @s[scores={KnockbackType=8..10}] run tag @s remove didnt_move
execute at @s[scores={KnockbackTime=2..,KnockbackType=8..10}] if score #temp PosX matches 8.. run tag @s add positive_x
execute at @s[scores={KnockbackTime=2..,KnockbackType=8..10}] if score #temp PosZ matches 8.. run tag @s add positive_z
execute at @s[scores={KnockbackTime=2..,KnockbackType=8..10}] if score #temp PosX matches ..-8 run tag @s add negative_x
execute at @s[scores={KnockbackTime=2..,KnockbackType=8..10}] if score #temp PosZ matches ..-8 run tag @s add negative_z
execute at @s[scores={KnockbackTime=2..,KnockbackType=8..10},tag=struggle] run scoreboard players add @s GrabbedShake 1
execute at @s[scores={KnockbackTime=2..,KnockbackType=8..9},tag=struggle] run scoreboard players set @e[tag=this_ghost,limit=1] ActionTime 20
execute at @s[scores={KnockbackTime=2..,KnockbackType=10},tag=struggle] run scoreboard players set @e[tag=this_ghost,limit=1] ActionTime 31
execute at @s[scores={KnockbackTime=2..,KnockbackType=8..9,GrabbedShake=5..}] run scoreboard players reset @e[tag=this_ghost,limit=1] GrabbedID
execute at @s[scores={KnockbackTime=2..,KnockbackType=10,GrabbedShake=10..}] run scoreboard players reset @e[tag=this_ghost,limit=1] GrabbedID
execute at @s[scores={KnockbackTime=2..,KnockbackType=8..10}] run tag @s remove struggle
scoreboard players set @s[scores={KnockbackTime=2..,KnockbackType=9..10,Invulnerable=6..}] Invulnerable 5
execute at @s[scores={KnockbackTime=2..,KnockbackType=9..10}] run effect give @s minecraft:instant_damage 1 0 true
execute at @s[scores={KnockbackTime=2..,KnockbackType=9..10}] run scoreboard players set @s ForcedDamage -5
execute at @s[scores={KnockbackTime=2..,KnockbackType=8..10}] run effect give @s minecraft:slowness 1 0 true
execute at @s[scores={KnockbackTime=1,KnockbackType=8..10}] run effect clear @s minecraft:slowness
execute at @s[scores={KnockbackTime=1,KnockbackType=8..10}] run scoreboard players reset @e[tag=this_ghost,limit=1] GrabbedID
scoreboard players set @s[scores={KnockbackTime=1,KnockbackType=9..10}] Invulnerable 60
scoreboard players reset @s[scores={KnockbackTime=1,KnockbackType=8..10}] GrabbedShake
tag @s[scores={KnockbackTime=1,KnockbackType=8..10}] remove grabbed
execute at @s[scores={KnockbackType=8..10}] run tag @e[tag=this_ghost,limit=1] remove this_ghost
execute at @s[scores={KnockbackType=8..10}] run scoreboard players reset #temp GrabbedID

execute at @s[scores={KnockbackTime=60,KnockbackType=11}] run playsound luigis_mansion:entity.player.slip player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=60,KnockbackType=11,Sound=0,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_scare.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=60,KnockbackType=11,Sound=0,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_scare.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={KnockbackTime=60,KnockbackType=11,Sound=0,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_scare.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=60,KnockbackType=11,Sound=0,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_scare.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={KnockbackTime=60,KnockbackType=11,Sound=0},tag=!gooigi] Sound 20
execute at @s[scores={KnockbackTime=40,KnockbackType=11,Sound=0,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_bounce.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=40,KnockbackType=11,Sound=0,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_bounce.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={KnockbackTime=40,KnockbackType=11,Sound=0,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_bounce.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=40,KnockbackType=11,Sound=0,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_bounce.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={KnockbackTime=40,KnockbackType=11,Sound=0},tag=!gooigi] Sound 20
effect give @s[scores={KnockbackTime=40,KnockbackType=11}] minecraft:instant_damage 1 0 true
scoreboard players set @s[scores={KnockbackTime=40,KnockbackType=11}] ForcedDamage 4
execute at @s[scores={KnockbackTime=10,KnockbackType=11,Sound=0,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.recover.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=10,KnockbackType=11,Sound=0,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.recover.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={KnockbackTime=10,KnockbackType=11,Sound=0,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.recover.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=10,KnockbackType=11,Sound=0,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.recover.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={KnockbackTime=10,KnockbackType=11,Sound=0},tag=!gooigi] Sound 10
execute at @s[scores={KnockbackType=11}] run function luigis_mansion:entities/player/knockback_lock_position
execute at @s[scores={KnockbackTime=41..60,KnockbackType=11}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^0.05 ~ ~
execute at @s[scores={KnockbackTime=51..60,KnockbackType=11},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet if block ~ ~2 ~ #luigis_mansion:all_ignore run teleport @s ~ ~0.15 ~
execute at @s[scores={KnockbackTime=41..50,KnockbackType=11},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet if block ~ ~-0.1 ~ #luigis_mansion:all_ignore run teleport @s ~ ~-0.15 ~
execute at @s[scores={KnockbackTime=51..60,KnockbackType=11},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet if block ~ ~-0.1 ~ #luigis_mansion:all_ignore run teleport @s ~ ~-0.15 ~
execute at @s[scores={KnockbackTime=41..50,KnockbackType=11},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet if block ~ ~2 ~ #luigis_mansion:all_ignore run teleport @s ~ ~0.15 ~

execute at @s[scores={KnockbackTime=60,KnockbackType=12..13,Sound=0,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.flee.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=60,KnockbackType=12..13,Sound=0,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.flee.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={KnockbackTime=60,KnockbackType=12..13,Sound=0,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.flee.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=60,KnockbackType=12..13,Sound=0,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.flee.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={KnockbackTime=60,KnockbackType=12..13,Sound=0},tag=!gooigi] Sound 60
execute at @s[scores={KnockbackTime=50..60,KnockbackType=13},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -90
execute at @s[scores={KnockbackTime=49,KnockbackType=13},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -80
execute at @s[scores={KnockbackTime=48,KnockbackType=13},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -70
execute at @s[scores={KnockbackTime=47,KnockbackType=13},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -60
execute at @s[scores={KnockbackTime=46,KnockbackType=13},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -50
execute at @s[scores={KnockbackTime=45,KnockbackType=13},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -40
execute at @s[scores={KnockbackTime=44,KnockbackType=13},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -30
execute at @s[scores={KnockbackTime=43,KnockbackType=13},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -20
execute at @s[scores={KnockbackTime=42,KnockbackType=13},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ -10
execute at @s[scores={KnockbackTime=50..60,KnockbackType=13},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 90
execute at @s[scores={KnockbackTime=49,KnockbackType=13},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 80
execute at @s[scores={KnockbackTime=48,KnockbackType=13},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 70
execute at @s[scores={KnockbackTime=47,KnockbackType=13},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 60
execute at @s[scores={KnockbackTime=46,KnockbackType=13},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 50
execute at @s[scores={KnockbackTime=45,KnockbackType=13},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 40
execute at @s[scores={KnockbackTime=44,KnockbackType=13},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 30
execute at @s[scores={KnockbackTime=43,KnockbackType=13},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 20
execute at @s[scores={KnockbackTime=42,KnockbackType=13},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^ ~ 10
execute at @s[scores={KnockbackType=12..13}] run function luigis_mansion:entities/player/knockback_lock_position
execute at @s[scores={KnockbackTime=51..60,KnockbackType=12}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^0.16 ~ ~
execute at @s[scores={KnockbackTime=..50,KnockbackType=12..13}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~-180 0 run teleport @s ^ ^ ^0.16 ~ ~

execute at @s[scores={KnockbackTime=140,KnockbackType=14},tag=gooigi] if score #debug_messages Selected matches 1.. run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion_3ds_remake:message.debug.gooigi_fake_door"}]}
execute at @s[scores={KnockbackTime=135,KnockbackType=14,Sound=0,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.scare.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=135,KnockbackType=14,Sound=0,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.scare.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={KnockbackTime=135,KnockbackType=14,Sound=0,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.scare.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=135,KnockbackType=14,Sound=0,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.scare.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={KnockbackTime=135,KnockbackType=14,Sound=0},tag=!gooigi] Sound 8
effect give @s[scores={KnockbackTime=125,KnockbackType=14}] minecraft:instant_damage 1 0 true
scoreboard players set @s[scores={KnockbackTime=125,KnockbackType=14}] ForcedDamage 4
execute at @s[scores={KnockbackType=14}] run summon minecraft:marker ~ ~ ~ {Tags:["home","remove_from_existence"]}
execute at @s[scores={KnockbackType=14}] store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute at @s[scores={KnockbackType=14}] store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PosY
execute at @s[scores={KnockbackType=14}] store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute at @s[scores={KnockbackType=14}] store result entity @e[tag=home,limit=1] Rotation[0] float 0.01 run scoreboard players get @s RotY
execute at @s[scores={KnockbackType=14}] store result entity @e[tag=home,limit=1] Rotation[1] float 0.01 run scoreboard players get @s RotX
execute at @s[scores={KnockbackType=14}] at @e[tag=home,limit=1] run tp @s ~ 0 ~ ~ ~
execute at @s[scores={KnockbackType=14}] at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s[scores={KnockbackTime=126..135,KnockbackType=14},tag=left_door] rotated ~-18 0 run teleport @s ^ ^ ^-0.15 ~ ~
execute at @s[scores={KnockbackTime=126..135,KnockbackType=14},tag=!left_door] rotated ~18 0 run teleport @s ^ ^ ^-0.15 ~ ~
execute at @s[scores={KnockbackTime=125,KnockbackType=14,Sound=0,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_fake_door.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=125,KnockbackType=14,Sound=0,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.hurt_fake_door.high_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={KnockbackTime=125,KnockbackType=14,Sound=0},tag=!gooigi] Sound 105
execute at @s[scores={KnockbackTime=50..79,KnockbackType=14}] rotated ~ 0 run teleport @s ^ ^ ^0.05
execute at @s[scores={KnockbackTime=50..79,KnockbackType=14}] run teleport @s ^ ^ ^ ~ ~3
execute at @s[scores={KnockbackTime=10..19,KnockbackType=14}] run teleport @s ^ ^ ^ ~ ~-9
execute at @s[scores={KnockbackTime=20,KnockbackType=14,Sound=0,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.sigh.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=20,KnockbackType=14,Sound=0,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.sigh.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={KnockbackTime=20,KnockbackType=14,Sound=0,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.sigh.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=20,KnockbackType=14,Sound=0,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.sigh.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={KnockbackTime=20,KnockbackType=14,Sound=0},tag=!gooigi] Sound 20
tag @s[scores={KnockbackTime=1,KnockbackType=14}] remove left_door

execute at @s unless entity @s[scores={KnockbackType=14}] if block ~ ~1 ~ #luigis_mansion:all_ignore unless block ~ ~1.9 ~ #luigis_mansion:all_ignore run teleport @s ~ ~-0.16 ~
execute at @s unless entity @s[scores={KnockbackType=14}] unless block ~ ~ ~ #luigis_mansion:all_ignore if block ~ ~0.3 ~ #luigis_mansion:all_ignore run teleport @s ~ ~0.16 ~
execute at @s unless entity @s[scores={KnockbackType=14}] unless block ~0.3 ~ ~ #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~-0.16 ~ ~
execute at @s unless entity @s[scores={KnockbackType=14}] unless block ~-0.3 ~ ~ #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~0.16 ~ ~
execute at @s unless entity @s[scores={KnockbackType=14}] unless block ~ ~ ~0.3 #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~-0.16
execute at @s unless entity @s[scores={KnockbackType=14}] unless block ~ ~ ~-0.3 #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~0.16
kill @e[type=minecraft:marker,tag=temp,limit=1]
scoreboard players remove @s KnockbackTime 1
tag @s[scores={KnockbackType=2..}] remove vacuuming_ghost
execute unless entity @s[scores={KnockbackType=8..10}] run scoreboard players reset @s GrabbedShake
execute unless entity @s[scores={KnockbackType=8..10}] run tag @s remove grabbed
scoreboard players reset @s[scores={KnockbackTime=0}] KnockbackX
scoreboard players reset @s[scores={KnockbackTime=0}] KnockbackZ
scoreboard players set @s[scores={KnockbackTime=0}] KnockbackType 0
scoreboard players reset @s[scores={KnockbackTime=0}] KnockbackTime

scoreboard players reset @s ScareType
scoreboard players reset @s ScareTime
function luigis_mansion:entities/player/animation/set/none