image_alpha -= alphaDecrease;
image_xscale += sizeIncrease;
image_yscale += sizeIncrease;
y -= yUp;

if (image_alpha <= 0) instance_destroy();
