summon minecraft:marker ^ ^-1 ^ {Tags:["temp"]}
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] double 0.01 run scoreboard players get @s KnockbackX
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] double 0.01 run scoreboard players get @s KnockbackZ

execute at @s[scores={KnockbackTime=2..,KnockbackType=1}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ ~ run teleport @s ^ ^ ^ ~ ~
execute at @s[scores={KnockbackTime=1,KnockbackType=1}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~

execute at @s[scores={KnockbackType=2}] run function luigis_mansion:entities/player/knockback_lock_position
execute at @s[scores={KnockbackTime=19,KnockbackType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-5
execute at @s[scores={KnockbackTime=18,KnockbackType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-10
execute at @s[scores={KnockbackTime=17,KnockbackType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-15
execute at @s[scores={KnockbackTime=16,KnockbackType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-20
execute at @s[scores={KnockbackTime=15,KnockbackType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-25
execute at @s[scores={KnockbackTime=14,KnockbackType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-30
execute at @s[scores={KnockbackTime=13,KnockbackType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-35
execute at @s[scores={KnockbackTime=12,KnockbackType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-40
execute at @s[scores={KnockbackTime=11,KnockbackType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-45
execute at @s[scores={KnockbackTime=10,KnockbackType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-40
execute at @s[scores={KnockbackTime=9,KnockbackType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-35
execute at @s[scores={KnockbackTime=8,KnockbackType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-30
execute at @s[scores={KnockbackTime=7,KnockbackType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-25
execute at @s[scores={KnockbackTime=6,KnockbackType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-20
execute at @s[scores={KnockbackTime=5,KnockbackType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-15
execute at @s[scores={KnockbackTime=4,KnockbackType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-10
execute at @s[scores={KnockbackTime=3,KnockbackType=2},tag=!flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~-5
execute at @s[scores={KnockbackTime=19,KnockbackType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~5
execute at @s[scores={KnockbackTime=18,KnockbackType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~10
execute at @s[scores={KnockbackTime=17,KnockbackType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~15
execute at @s[scores={KnockbackTime=16,KnockbackType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~20
execute at @s[scores={KnockbackTime=15,KnockbackType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~25
execute at @s[scores={KnockbackTime=14,KnockbackType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~30
execute at @s[scores={KnockbackTime=13,KnockbackType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~35
execute at @s[scores={KnockbackTime=12,KnockbackType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~40
execute at @s[scores={KnockbackTime=11,KnockbackType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~45
execute at @s[scores={KnockbackTime=10,KnockbackType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~40
execute at @s[scores={KnockbackTime=9,KnockbackType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~35
execute at @s[scores={KnockbackTime=8,KnockbackType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~30
execute at @s[scores={KnockbackTime=7,KnockbackType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~25
execute at @s[scores={KnockbackTime=6,KnockbackType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~20
execute at @s[scores={KnockbackTime=5,KnockbackType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~15
execute at @s[scores={KnockbackTime=4,KnockbackType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~10
execute at @s[scores={KnockbackTime=3,KnockbackType=2},tag=flipped_gravity] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^ ~ ~5
execute at @s[scores={KnockbackTime=1..,KnockbackType=2}] rotated ~ 0 run teleport @s ^ ^ ^-0.05

execute at @s[scores={KnockbackType=3}] run function luigis_mansion:entities/player/knockback_lock_position
execute at @s[scores={KnockbackTime=31..,KnockbackType=3}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^-0.16 ~ ~

execute at @s[scores={KnockbackTime=20..,KnockbackType=4}] if score #mirrored Selected matches 0 run teleport @s ^ ^ ^ ~-10 ~
execute at @s[scores={KnockbackTime=20..,KnockbackType=4}] if score #mirrored Selected matches 1 run teleport @s ^ ^ ^ ~10 ~

execute at @s[scores={KnockbackTime=1..,KnockbackType=5}] run summon minecraft:marker ~ ~ ~ {Tags:["home"]}
execute at @s[scores={KnockbackTime=1..,KnockbackType=5}] store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute at @s[scores={KnockbackTime=1..,KnockbackType=5}] store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PosY
execute at @s[scores={KnockbackTime=1..,KnockbackType=5}] store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute at @s[scores={KnockbackTime=1..,KnockbackType=5}] store result entity @e[tag=home,limit=1] Rotation[0] float 0.01 run scoreboard players get @s RotY
execute at @s[scores={KnockbackTime=1..,KnockbackType=5}] store result entity @e[tag=home,limit=1] Rotation[1] float 0.01 run scoreboard players get @s RotX
execute at @s[scores={KnockbackTime=1..,KnockbackType=5}] at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s[scores={KnockbackTime=1..,KnockbackType=5}] run kill @e[tag=home,limit=1]

execute at @s[scores={KnockbackTime=1..,KnockbackType=6}] run summon minecraft:marker ~ ~ ~ {Tags:["home"]}
execute at @s[scores={KnockbackTime=1..,KnockbackType=6}] store result entity @e[tag=home,limit=1] Pos[0] double 0.01 run scoreboard players get @s PosX
execute at @s[scores={KnockbackTime=1..,KnockbackType=6}] store result entity @e[tag=home,limit=1] Pos[1] double 0.01 run scoreboard players get @s PosY
execute at @s[scores={KnockbackTime=1..,KnockbackType=6}] store result entity @e[tag=home,limit=1] Pos[2] double 0.01 run scoreboard players get @s PosZ
execute at @s[scores={KnockbackTime=1..,KnockbackType=6}] store result entity @e[tag=home,limit=1] Rotation[0] float 0.01 run scoreboard players get @s RotY
execute at @s[scores={KnockbackTime=1..,KnockbackType=6}] store result entity @e[tag=home,limit=1] Rotation[1] float 0.01 run scoreboard players get @s RotX
execute at @s[scores={KnockbackTime=10..,KnockbackType=6}] unless entity @e[tag=home,limit=1,distance=..0.1] run scoreboard players remove @s KnockbackTime 2
execute at @s[scores={KnockbackTime=1..,KnockbackType=6}] at @e[tag=home,limit=1] run tp @s ~ ~ ~ ~ ~
scoreboard players set @s[scores={KnockbackTime=10..,KnockbackType=6,Invulnerable=6..}] Invulnerable 5
execute at @s[scores={KnockbackTime=10..,KnockbackType=6}] run effect give @s minecraft:instant_damage 1 0 true
execute at @s[scores={KnockbackTime=10..,KnockbackType=6}] run scoreboard players set @s ForcedDamage -5
execute at @s[scores={KnockbackTime=10..,KnockbackType=6}] run particle minecraft:firework ~ ~1 ~ 0.4 0.4 0.4 0 10 normal @a[tag=same_room]
scoreboard players set @s[scores={KnockbackTime=10,KnockbackType=6}] Invulnerable 70
execute at @s[scores={KnockbackTime=1..,KnockbackType=6}] run kill @e[tag=home,limit=1]

execute at @s[scores={KnockbackTime=10,KnockbackType=7..9}] run playsound luigis_mansion:entity.player.grabbed player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={KnockbackTime=10,KnockbackType=8..9}] run effect give @s minecraft:instant_damage 1 0 true
execute at @s[scores={KnockbackTime=10,KnockbackType=8}] run scoreboard players set @s ForcedDamage -1
execute at @s[scores={KnockbackTime=10,KnockbackType=9}] run scoreboard players set @s ForcedDamage 4
execute at @s[scores={KnockbackTime=1..,KnockbackType=7..9}] run scoreboard players operation #temp GrabbedID = @s ID
execute at @s[scores={KnockbackTime=1..,KnockbackType=7..9}] as @e[tag=ghost,scores={GrabbedID=-2147483648..}] if score @s GrabbedID = #temp GrabbedID run tag @s add this_ghost
execute if entity @e[tag=this_ghost,limit=1,scores={VulnerableTime=0}] run scoreboard players add @s[scores={KnockbackTime=1,KnockbackType=7..9}] KnockbackTime 1
execute at @s[scores={KnockbackTime=2..,KnockbackType=7..9}] store result score #temp PosX run data get entity @s Pos[0] 100
execute at @s[scores={KnockbackTime=2..,KnockbackType=7..9}] store result score #temp PosZ run data get entity @s Pos[2] 100
execute at @s[scores={KnockbackTime=2..,KnockbackType=7..9}] run scoreboard players operation #temp PosX -= @s PosX
execute at @s[scores={KnockbackTime=2..,KnockbackType=7..9}] run scoreboard players operation #temp PosZ -= @s PosZ
execute at @s[scores={KnockbackTime=2..,KnockbackType=7..9},tag=!positive_x] if score #temp PosX matches 8.. run tag @s add struggle
execute at @s[scores={KnockbackTime=2..,KnockbackType=7..9},tag=!positive_z] if score #temp PosZ matches 8.. run tag @s add struggle
execute at @s[scores={KnockbackTime=2..,KnockbackType=7..9},tag=!negative_x] if score #temp PosX matches ..-8 run tag @s add struggle
execute at @s[scores={KnockbackTime=2..,KnockbackType=7..9},tag=!negative_z] if score #temp PosZ matches ..-8 run tag @s add struggle
execute at @s[scores={KnockbackTime=1..,KnockbackType=7..9}] run tag @s remove positive_x
execute at @s[scores={KnockbackTime=1..,KnockbackType=7..9}] run tag @s remove positive_z
execute at @s[scores={KnockbackTime=1..,KnockbackType=7..9}] run tag @s remove negative_x
execute at @s[scores={KnockbackTime=1..,KnockbackType=7..9}] run tag @s remove negative_z
execute at @s[scores={KnockbackTime=2..,KnockbackType=7..9}] if score #temp PosX matches 8.. run tag @s add positive_x
execute at @s[scores={KnockbackTime=2..,KnockbackType=7..9}] if score #temp PosZ matches 8.. run tag @s add positive_z
execute at @s[scores={KnockbackTime=2..,KnockbackType=7..9}] if score #temp PosX matches ..-8 run tag @s add negative_x
execute at @s[scores={KnockbackTime=2..,KnockbackType=7..9}] if score #temp PosZ matches ..-8 run tag @s add negative_z
execute at @s[scores={KnockbackTime=2..,KnockbackType=7..9},tag=struggle] run scoreboard players add @s GrabbedShake 1
execute at @s[scores={KnockbackTime=2..,KnockbackType=7..8},tag=struggle] run scoreboard players set @e[tag=this_ghost,limit=1] ActionTime 20
execute at @s[scores={KnockbackTime=2..,KnockbackType=9},tag=struggle] run scoreboard players set @e[tag=this_ghost,limit=1] ActionTime 31
execute at @s[scores={KnockbackTime=2..,KnockbackType=7..8,GrabbedShake=5..}] run scoreboard players reset @e[tag=this_ghost,limit=1] GrabbedID
execute at @s[scores={KnockbackTime=2..,KnockbackType=9,GrabbedShake=10..}] run scoreboard players reset @e[tag=this_ghost,limit=1] GrabbedID
execute at @s[scores={KnockbackTime=2..,KnockbackType=7..9}] run tag @s remove struggle
scoreboard players set @s[scores={KnockbackTime=2..,KnockbackType=8..9,Invulnerable=6..}] Invulnerable 5
execute at @s[scores={KnockbackTime=2..,KnockbackType=8..9}] run effect give @s minecraft:instant_damage 1 0 true
execute at @s[scores={KnockbackTime=2..,KnockbackType=8..9}] run scoreboard players set @s ForcedDamage -5
execute at @s[scores={KnockbackTime=2..,KnockbackType=7..9}] run effect give @s minecraft:slowness 1 0 true
execute at @s[scores={KnockbackTime=1,KnockbackType=7..9}] run effect clear @s minecraft:slowness
execute at @s[scores={KnockbackTime=1,KnockbackType=7..9}] run scoreboard players reset @e[tag=this_ghost,limit=1] GrabbedID
scoreboard players set @s[scores={KnockbackTime=1,KnockbackType=8..9}] Invulnerable 60
scoreboard players reset @s[scores={KnockbackTime=1,KnockbackType=7..9}] GrabbedShake
tag @s[scores={KnockbackTime=1,KnockbackType=7..9}] remove grabbed
execute at @s[scores={KnockbackTime=1..,KnockbackType=7..9}] run tag @e[tag=this_ghost,limit=1] remove this_ghost
execute at @s[scores={KnockbackTime=1..,KnockbackType=7..9}] run scoreboard players reset #temp GrabbedID

execute at @s if block ~ ~1 ~ #luigis_mansion:ghosts_ignore unless block ~ ~1.9 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~-0.16 ~
execute at @s unless block ~ ~ ~ #luigis_mansion:ghosts_ignore if block ~ ~0.1 ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~0.16 ~
execute at @s unless block ~0.3 ~ ~ #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~-0.16 ~ ~
execute at @s unless block ~-0.3 ~ ~ #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~0.16 ~ ~
execute at @s unless block ~ ~ ~0.3 #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~ ~-0.16
execute at @s unless block ~ ~ ~-0.3 #luigis_mansion:ghosts_ignore if block ~ ~ ~ #luigis_mansion:ghosts_ignore run teleport @s ~ ~ ~0.16
kill @e[type=minecraft:marker,tag=temp,limit=1]
scoreboard players remove @s KnockbackTime 1
scoreboard players reset @s[scores={KnockbackType=..6}] GrabbedShake
tag @s[scores={KnockbackType=..6}] remove grabbed
scoreboard players reset @s[scores={KnockbackTime=0}] KnockbackX
scoreboard players reset @s[scores={KnockbackTime=0}] KnockbackZ
scoreboard players reset @s[scores={KnockbackTime=0}] KnockbackType
scoreboard players reset @s[scores={KnockbackTime=0}] KnockbackTime

scoreboard players reset @s ScareType
scoreboard players reset @s ScareTime
function luigis_mansion:entities/player/idle/reset