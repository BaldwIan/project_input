speed += 0.2

killtime--;
if (killtime <= 0) instance_destroy()

part_emitter_region(particles, particles_emitter, x, x, y, y, pt_shape_circle, ps_distr_gaussian);
part_emitter_burst(particles, particles_emitter, smoke, 5);

