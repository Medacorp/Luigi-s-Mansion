scoreboard objectives add ActionTime dummy
scoreboard objectives add Angle dummy
scoreboard objectives add AnimationProg dummy
scoreboard objectives add Attack minecraft.custom:minecraft.damage_dealt
scoreboard objectives add BananaDropTime dummy
scoreboard objectives add BookChoice trigger
scoreboard objectives add Boos dummy
scoreboard objectives add BooTimer dummy
scoreboard objectives add ChangedMansion dummy
scoreboard objectives add ClairvoyaChoice trigger
scoreboard objectives add ClairvoyaSpoke dummy
scoreboard objectives add ClickEventCheck trigger
scoreboard objectives add Constants dummy
scoreboard objectives add Damage dummy
scoreboard objectives add DamagePitch dummy
scoreboard objectives add DamagePitchTimer dummy
scoreboard objectives add DeathTime dummy
scoreboard objectives add Dialog dummy
scoreboard objectives add Distance dummy
scoreboard objectives add ElementHurtTime dummy
scoreboard objectives add ElementalNr dummy
scoreboard objectives add EGaddCallChoice trigger
scoreboard objectives add EGaddGallChoice trigger
scoreboard objectives add EGaddGPRChoice trigger
scoreboard objectives add EGaddLabChoice trigger
scoreboard objectives add EGaddTrainChoice trigger
scoreboard objectives add ErrorTime dummy
scoreboard objectives add FakeDoors dummy
scoreboard objectives add FlashlightType dummy
scoreboard objectives add FlyTime dummy
scoreboard objectives add Food food
scoreboard objectives add ForcedDamage dummy
scoreboard objectives add ForceRadar dummy
scoreboard objectives add ForceScreen dummy
scoreboard objectives add GBHCall dummy
scoreboard objectives add GBHChoice trigger
scoreboard objectives add GBHDialog dummy
scoreboard objectives add GBHRadar dummy
scoreboard objectives add GBHWait dummy
scoreboard objectives add GhostCaught dummy
scoreboard objectives add GhostCount dummy
scoreboard objectives add GhostNr dummy
scoreboard objectives add GhostGuyCouple dummy
scoreboard objectives add GrabbedID dummy
scoreboard objectives add GrabbedShake dummy
scoreboard objectives add Health dummy
scoreboard objectives add HealthMusic dummy
scoreboard objectives add HeartOffset dummy
scoreboard objectives add HideTime dummy
scoreboard objectives add HomeRot dummy
scoreboard objectives add HomeRotX dummy
scoreboard objectives add HomeRotY dummy
scoreboard objectives add HomeX dummy
scoreboard objectives add HomeY dummy
scoreboard objectives add HomeZ dummy
scoreboard objectives add HurtTime dummy
scoreboard objectives add ID dummy
scoreboard objectives add IdleTime dummy
scoreboard objectives add IncreaseAmount dummy
scoreboard objectives add InteractionTime dummy
scoreboard objectives add InteractionType dummy
scoreboard objectives add Invulnerable dummy
scoreboard objectives add JarvisChoice trigger
scoreboard objectives add Jump minecraft.custom:minecraft.jump
scoreboard objectives add JumpHeight dummy
scoreboard objectives add Keys dummy
scoreboard objectives add KillerID dummy
scoreboard objectives add KnockbackTime dummy
scoreboard objectives add KnockbackType dummy
scoreboard objectives add KnockbackX dummy
scoreboard objectives add KnockbackZ dummy
scoreboard objectives add LastFloor dummy
scoreboard objectives add LastHealth dummy
scoreboard objectives add LastHealthMusic dummy
scoreboard objectives add LastRoom dummy
scoreboard objectives add LastTotalDamage dummy
scoreboard objectives add LightStep dummy
scoreboard objectives add LightX dummy
scoreboard objectives add LightY dummy
scoreboard objectives add LightZ dummy
scoreboard objectives add Loaded dummy
scoreboard objectives add LoadedChunks dummy
scoreboard objectives add MansionChoice trigger
scoreboard objectives add MapSound dummy
scoreboard objectives add MapZoomTime dummy
scoreboard objectives add MaxHealth dummy
scoreboard objectives add MaxHealthTime dummy
scoreboard objectives add MelodyChoice trigger
scoreboard objectives add MirrorX dummy
scoreboard objectives add MirrorZ dummy
scoreboard objectives add ModelTime dummy
scoreboard objectives add Money dummy
scoreboard objectives add Move dummy
scoreboard objectives add MoveFlee dummy
scoreboard objectives add MushroomTimer dummy
scoreboard objectives add Music dummy
scoreboard objectives add MusicGroup dummy
scoreboard objectives add MusicType dummy
scoreboard objectives add Offline minecraft.custom:minecraft.leave_game
scoreboard objectives add OpenMapFocus dummy
scoreboard objectives add OpenMapTime dummy
scoreboard objectives add OtherX dummy
scoreboard objectives add OtherY dummy
scoreboard objectives add OtherZ dummy
scoreboard objectives add Owner dummy
scoreboard objectives add PassiveNr dummy
scoreboard objectives add PathStep dummy
scoreboard objectives add PlayerRotation dummy
scoreboard objectives add PoltergustSound dummy
scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add PrevHealth dummy
scoreboard objectives add PrevMusicType dummy
scoreboard objectives add PrevRoom dummy
scoreboard objectives add PrevTotalDamage dummy
scoreboard objectives add Pull dummy
scoreboard objectives add PullStrength dummy
scoreboard objectives add PunchingBag dummy
scoreboard objectives add Range dummy
scoreboard objectives add ReflectionNr dummy
scoreboard objectives add ResetChoice trigger
scoreboard objectives add ReturnTimer dummy
scoreboard objectives add Room dummy
scoreboard objectives add RoomNoise dummy
scoreboard objectives add RoomSection dummy
scoreboard objectives add RotationDif dummy
scoreboard objectives add RotX dummy
scoreboard objectives add RotY dummy
scoreboard objectives add Run minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add ScareType dummy
scoreboard objectives add ScareTime dummy
scoreboard objectives add Search dummy
scoreboard objectives add Searched dummy
scoreboard objectives add Searching dummy
scoreboard objectives add SecondFleeDamage dummy
scoreboard objectives add SecondFleeState dummy
scoreboard objectives add Selected dummy
scoreboard objectives add SettingsCheck trigger
scoreboard objectives add Shrunk dummy
scoreboard objectives add SlipX dummy
scoreboard objectives add SlipZ dummy
scoreboard objectives add Sneak minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add Sneaking minecraft.custom:minecraft.sneak_time
scoreboard objectives add SneakTime dummy
scoreboard objectives add Sound dummy
scoreboard objectives add SpawnTime dummy
scoreboard objectives add Steps dummy
scoreboard objectives add StunTime dummy
scoreboard objectives add Talk minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add TargetX dummy
scoreboard objectives add TargetY dummy
scoreboard objectives add TargetZ dummy
scoreboard objectives add Ticking dummy
scoreboard objectives add Time dummy
scoreboard objectives add Toad1Choice trigger
scoreboard objectives add Toad2Choice trigger
scoreboard objectives add Toad3Choice trigger
scoreboard objectives add Toad4Choice trigger
scoreboard objectives add Toad5Choice trigger
scoreboard objectives add TopVacuumDamage dummy
scoreboard objectives add TotalDamage dummy
scoreboard objectives add Totals dummy
scoreboard objectives add TrainingOption trigger
scoreboard objectives add Turn dummy
scoreboard objectives add TwinsChoice trigger
scoreboard objectives add UseItem minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add Vacuumables dummy
scoreboard objectives add VacuumErrors dummy
scoreboard objectives add VacuumTime dummy
scoreboard objectives add Variant dummy
scoreboard objectives add VulnerableTime dummy
scoreboard objectives add WaitTime dummy
scoreboard objectives add Walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add WalkOnWater minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add WalkUnderWater minecraft.custom:minecraft.walk_under_water_one_cm
scoreboard objectives add WarpTime dummy
scoreboard objectives add Wave dummy
scoreboard objectives add Wool dummy
scoreboard objectives add YellTime dummy

scoreboard players set #-1 Constants -1
scoreboard players set #2 Constants 2
scoreboard players set #3 Constants 3
scoreboard players set #5 Constants 5
scoreboard players set #10 Constants 10
scoreboard players set #20 Constants 20
scoreboard players set #30 Constants 30
scoreboard players set #50 Constants 50
scoreboard players set #60 Constants 60
scoreboard players set #100 Constants 100
scoreboard players set #200 Constants 200
scoreboard players set #256 Constants 256
scoreboard players set #500 Constants 500
scoreboard players set #800 Constants 800
scoreboard players set #1000 Constants 1000
scoreboard players set #2000 Constants 2000
scoreboard players set #10000 Constants 10000
scoreboard players set #20000 Constants 20000

team add NoCollision
team modify NoCollision collisionRule never

scoreboard objectives setdisplay list Health

bossbar add luigis_mansion:boo_counter {"translate":"luigis_mansion:message.boo_counter","color":"white","with":["0","0"]}
bossbar set luigis_mansion:boo_counter color white

execute unless score #loaded_exterior Selected matches -2147483648.. run scoreboard players set #loaded_exterior Selected 0
execute unless score #mansion_data_index Selected matches -2147483648.. run scoreboard players set #mansion_data_index Selected 0
execute unless score #mansion_type Selected matches -2147483648.. run scoreboard players set #mansion_type Selected 0
execute unless score #previous_mansion_index Selected matches -2147483648.. run scoreboard players set #previous_mansion_index Selected 0
execute unless score #mirrored Selected matches 0..1 run scoreboard players set #mirrored Selected 0
execute unless score #can_warp Selected matches 0..1 run scoreboard players set #can_warp Selected 1
execute unless score #can_revive Selected matches 0..1 run scoreboard players set #can_revive Selected 0
execute unless score #multiply_hurt Selected matches 0.. run scoreboard players set #multiply_hurt Selected 100
execute unless score #multiply_damage Selected matches 0.. run scoreboard players set #multiply_damage Selected 100
execute unless score #changing_max_health Selected matches 0..1 run scoreboard players set #changing_max_health Selected 0
execute unless score #radar_type Selected matches 0.. run scoreboard players set #radar_type Selected 0
execute unless score #heart_coin_count Selected matches 0.. run scoreboard players set #ghost_heart_size Selected 200
execute unless score #gbh_clock Selected matches -2147483648.. run scoreboard players set #gbh_clock Selected 0
execute unless score #gbh_clock_increase Selected matches -2147483648.. run scoreboard players set #gbh_clock_increase Selected 0
execute if score #gbh_clock_increase Selected matches 0 run scoreboard players set #gbh_clock Selected 0

execute unless score #training_choice Selected matches 0..1 run scoreboard players set #training_choice Selected 0
execute unless score #freeze_timer Selected matches 0..1 run scoreboard players set #freeze_timer Selected 0
execute unless data storage luigis_mansion:data current_state run function luigis_mansion:other/upgrade_path/newly_installed

gamerule doTileDrops false
gamerule maxCommandChainLength 2147483647