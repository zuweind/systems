{ ... }:
{
	programs.feh = {
		keybindings = {
			next_img = [
				"l"
				"Right"
			];
			prev_img = [
				"h"
				"Left"
			];
			zoom_in = "plus";
			zoom_out = "minus";
		};
	};
	themes = {
		booth = [
			"--full-screen"
			"--hide-pointer"
			"--slideshow-delay"
			"20"
		];
		feh = [
			"--image-bg"
			"black"
		];
		imagemap = [
			"-rVq"
			"--thumb-width"
			"40"
			"--thumb-height"
			"30"
			"--index-info"
			"%n\\n%wx%h"
		];
		present = [
			"--full-screen"
			"--sort"
			"name"
			"--hide-pointer"
		];
		webcam = [
			"--multiwindow"
			"--reload"
			"20"
		];
	};
}
