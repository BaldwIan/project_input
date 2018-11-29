/// high explosive round.
// You can write your code in this editor
direction = point_direction(x, y, mouse_x, mouse_y);
speed = 15;
image_angle = direction;
killtime = room_speed * 2;
audio_play_sound(sndPillFire, 0.5, false);


// Particle System
particles = part_system_create();
part_system_depth(particles, -10000);

// smoke particle
smoke = part_type_create();
part_type_sprite(smoke, sprSmoke, false, false, true);
part_type_size(smoke, -0.25, 0.25, -0.25, 0.25);
//part_type_color2(smoke, random_range(1, 9999), random_range(1, 9999));
part_type_alpha2(smoke, 1, 0.25);
part_type_orientation(smoke, 0, 359, irandom_range(x, y), 0, true);
part_type_life(smoke, 3, 3);
part_type_blend(smoke, true);

// Display Particles
particles_emitter = part_emitter_create(particles);
part_emitter_region(particles, particles_emitter, x, x, y, y, pt_shape_circle, ps_distr_gaussian);
part_emitter_stream(particles, particles_emitter, smoke, 1);

