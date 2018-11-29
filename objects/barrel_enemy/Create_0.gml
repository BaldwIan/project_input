alert = false;
hpDown = 60;
maxHp = 5;
hp = 5;
hpBarScale = 0.25;
aggroDistance = 200

drop=random(100)

cooldown = room_speed * 1

#region praticles

/* // Particle System
particles = part_system_create();
part_system_depth(particles, -10000);

// smoke particle
smoke = part_type_create();
part_type_sprite(smoke, sprSmoke, false, false, true);
part_type_size(smoke, -2, 2, -2, 2);
part_type_color2(smoke, random_range(1, 9999), random_range(1, 9999));
part_type_alpha2(smoke, 0.5, 0.25);
part_type_orientation(smoke, 0, 359, irandom_range(x, y), 0, true);
part_type_life(smoke, 5, 5);
part_type_blend(smoke, true);

// Display Particles
particles_emitter = part_emitter_create(particles);
part_emitter_region(particles, particles_emitter, x, x, y, y, pt_shape_circle, ps_distr_gaussian);
part_emitter_stream(particles, particles_emitter, smoke, 1);

*/
#endregion particles
