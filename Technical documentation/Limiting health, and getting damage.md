Damage is done by calling the `luigis_mansion:entities/player/take_damage` function as the player to take damage. It'll look at the damage data to determine what to do. This data is stored in the storage `luigis_mansion:data damage` object.

```
damage: {
    amount:X, //Amount of damage taken, before scaling with the multiply_damage_taken global variable.
    during_knockback_amount:X //Same as above, but this damage will be applied in the middle of knockback (eg fake door, or slipping).
    limit_health:X, //Limits the max health of the player.
    method:"<type>", //The method used in the death message.
    attacker:X, //The attacker used in the death message, either a ghost number or a string to be interpreted when the death message triggers. Forgotten by the player after 10 seconds.
    knockback:"<type>", //The knockback to use, also supports scare types.
    no_delete:1b //When set, doesn't delete this damage object. Used when multiple players can be hit at once. When used, make sure to delete the object afterwards.
}
```

If an amount and limit_health are both set, the amount is damage handled, then the max health.

Examples: 100 HP -> 70 limit+10 damage -> 70/70; 100 HP -> 70 limit+50 damage -> 50/70

Deal damage 1 tick after setting max health to have it "stack" with the health limitation.

Max health will return to 100 after 5 to 10 seconds depending on how much the player moves. This timer resets whenever the player is scared by a ghost.



Knockback types:
```
Value              | Effect
small              | Player keeps moving, but looks at the origin. (mice and bats)
medium             | Player is pushed backward slighly.
medium_forward     | Same as above, but forward.
large              | Player fies several block back. (most attacks)
burn               | Player spins in circles and has a smoking cap. When Gooigi, this sets method to "melt", and insta-kills.
soak               | Player freezes in place, dripping water everywhere.
freeze             | Player is frozen solid, and takes repeated 1 damage after the initial hit. Rapid moving shortens duration.
harmless_grab      | Player can no longer use items, and is slowed. Change direction moved in 20 times to break free.
harmfull_grab      | Same as above, but takes repeated 1 damage after the initial hit. Change direction moved in 20 times to break free. (Grabbing ghosts count this value up 1 every few ticks too.)
bite               | Same as above, but 31 move direction changes are needed (spooky).
slip               | Player flies up in the air, and lands on his butt. (Uses during_knockback_amount.) (bannana)
fake_door          | Player opens a door (left_door tag mirrors direction), and is flattened by it. (Uses during_knockback_amount.)
flee               | Player runs forward.
flee_look_up       | Same as above, but initially looks up (Boolossus intro).
scare              | Player freezes in place for 1 second. If in bashed state, the bash starts anew.
bash_scare         | Player screams, lands on the ground, and crawls backwards until max health is restored.
bash_no_move_scare | Same as above, but no crawling, frozen in place.
freeze_scare       | Player freezes in place and looks up (Boolossus intro).
```