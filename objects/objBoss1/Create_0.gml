/*
#region praticles

image_blend = c_dkgray
// Particle System

particles = part_system_create();
part_system_depth(particles, -10000);

// plasma particle
plasma = part_type_create();
part_type_sprite(plasma, sprPlasma, false, false, true);
part_type_size(plasma, -2, 2, -2, 2);
part_type_speed(plasma, -10, 10, 0.2, 0.1)
//part_type_color1(plasma, random_range(1, 9999));
//part_type_color2(plasma, random_range(1, 9999), random_range(1, 9999));
part_type_alpha2(plasma, 1, 0.25);
part_type_orientation(plasma, 0, 359, irandom_range(x, y), 0, true);
part_type_life(plasma, 2, 2);
part_type_blend(plasma, true);

// Display Particles
particles_emitter = part_emitter_create(particles);
part_emitter_region(particles, particles_emitter, x, x, y, y, pt_shape_circle, ps_distr_gaussian);
part_emitter_stream(particles, particles_emitter, plasma, 1);

#endregion particles
*/
wcooldown = 0;
plugcooldown = room_speed * 5;
cooldown=room_speed*2;
aggroDistance = 200;
alert = true;

maxHp = 50;
hp = maxHp;
hpBarScale = 0.5;
hpDown= 150;
bspd=15;



with(wall_obj) image_blend = c_orange;
with (objPlugIn) image_blend = c_blue;
with (objPlugOut) image_blend = c_blue;


