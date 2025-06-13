# Godot Web Editor File Deleter
## About
An editor-only plugin, that workarounds a [Godot Web Editor issue](https://github.com/godotengine/godot/issues/70975).

While the issue still needed to be fixed (because this workaround is NOT the full solution), you can delete files now in Web editor.

## Instruction
1. Enable addon
2. Move files to `res://_trash/` folder
3. Click TWICE at Tools > Clean trash button.
4. Filesystem tab won't update on cleaning trash. Performing file actions will show, that the trash is empty

## License

MIT License

Thanks to khairul169 for providing a [pull request](https://github.com/godotengine/godot/pull/99769) to fix this Godot Issue (I referenced this pull request's code)