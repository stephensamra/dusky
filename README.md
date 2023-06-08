# dusky

[![Docker](https://img.shields.io/badge/Docker-stephensamra%2Fdusky-blue)](https://hub.docker.com/r/stephensamra/dusky)

Provide `dusky` with a light and dark wallpaper, and it will create a dynamic wallpaper for macOS that changes with the system appearance.

## Usage

1. Create a directory for your wallpaper images.
2. Add a light and dark wallpaper to the directory. Only PNG and JPEG files are supported. By default, `dusky` will look for files named `light.png` and `dark.png`.
3. Run `dusky` in the directory with the following command (requires Docker):

```bash
docker run --rm -v $PWD:/dusky stephensamra/dusky
```

If your files are in JPEG format, or you have named your wallpaper files differently, you can specify the names of the files:

```bash
docker run --rm -v $PWD:/dusky stephensamra/dusky light_wallpaper.jpg dark_wallpaper.jpg
```

4. The dynamic wallpaper will be saved as `Wallpaper.heic` in the directory.
5. Set the `Wallpaper.heic` file as your desktop background.
6. Enjoy!

**Note**: you may see this error multiple times when running `dusky`: `x265 [error]: Failed to genrate CPU mask`. As far as I can tell, this error is harmless and does not affect the final image.

## Credits

Thanks to Marcin Czachurski for their blog posts on breaking down the dynamic wallpaper format:

- [macOS Mojave dynamic wallpaper](https://archive.is/rgq9v)
- [macOS Mojave dynamic wallpapers (II)](https://archive.is/jKYFI)

Thanks to the author of this blog post for showing how to create a dynamic wallpaper using `libheif` and `exiv2`:

- [How to Create Dynamic Wallpapers for macOS That Support Automatic Light and Dark Mode](https://remove.codes/01-dynamic-wallpaper)
