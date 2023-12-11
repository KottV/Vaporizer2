## [3.4.3] - 2023-12-10
- Removed optional moduleinfo.json from VST3 bundles as it led to
  issues in Tracktion Waveform, Reason and other DAWs
- Removed clicks when changing presets while playing (fade-in/out
  mechanism was broken)
- Removed sporadical click in filter on first notes after load of
  preset
- Preset XML files are loaded asynchronously to decrease start up
  time of plugin
- Fixed a bug with parameter changes done by hosts on the audio
  channel leading to hangs and crashes
- Added mono bus layout as this seems to be required in several
  hosts for VST3
- Smoothing of midi pitchbend and modwheel messages fixed
- MPE bend range fixed (96 semitones had to be set to get 48)
- Fixed unintentional mono processing in Comb filter FX
- Added a configuration setting for keyboard keys to plugin midi
  keyboard mapping plus base octave
- Tryed to fix a sporadic crash of VST3 in certain hosts on quick
  program change while playing (e.g. in Cakewalk, unconfirmed yet
  that it is fixed)
- Windows installer did not correctly install _SSE2* names when
  that was selected
- CLAP build in CMake (still experimental)


## [3.4.0] - 2023-12-02
Please make sure that you have uninstalled older versions of Vaporizer2 or have manually deleted all VASTvaporizer2*.* plugins on your system before installing.
Due to filename changes otherwise it wouild lead to mixed versions installed. Make sure that the installed plugin in your DAW shows version number 3.4.0 on the top right.

- Added native Mac M1/M2 silicon support (neon vector extensions)
- Addded LV2 Linux builds
- Added microtuning support (AnaMark Tuning files .TUN support)
- Added permanent link option for modulation wheel to custom modulator
- Added 32 note polyphony mode
- Major performance improvements saving CPU
- Many stability improvements
- Improved GUI fonts and tooltips
- Additional factory presets
- Improved installers
- Midi keyboard key hold mode
- Uses FFTW3 per default with major performance gais in wavetable engine
- Separated factory and user folders for presets, wavetables and wavs
- Properly handle install directory as read-only - moved settings to user managed folder
- JUCE upgrade to 7.0.8
- Added CMake support
- Bugfix: ARP sync in Logic on macOS no longer leads to distorted sound
- Bugfix: Corrected editing of imaginary wavtebabkle parts in frequency domain editor
- Removed legacy 32-bit builds from installers (you still can CMake them on your own)

You can download installers for macOS and Windows here:
https://www.vast-dynamics.com/?q=products

- Windows: https://vast-dynamics.com/sites/default/files/downloads/Vaporizer2_installer_win_3.4.0.zip
- macOS: https://vast-dynamics.com/sites/default/files/downloads/Vaporizer2_installer_OSX64_3.4.0.zip
- Linux:

Standalone version (alsa, jack):
[vaporizer2](https://software.opensuse.org//download.html?project=multimedia%3Aproaudio&package=vaporizer2)

Factory data (presets, noises, wavetables):
[vaporizer2-data](https://software.opensuse.org//download.html?project=multimedia%3Aproaudio&package=vaporizer2-data)

For rpm-based (openSUSE, Fedora, Mageia):
[lv2-vaporizer2](https://software.opensuse.org//download.html?project=multimedia%3Aproaudio&package=lv2-vaporizer2)
[vst3-vaporizer2](https://software.opensuse.org//download.html?project=multimedia%3Aproaudio&package=vst3-vaporizer2)

For deb-based (Debian, Ubuntu):
[vaporizer2-lv2](https://software.opensuse.org//download.html?project=multimedia%3Aproaudio&package=vaporizer2-lv2)
[vaporizer2-vst3](https://software.opensuse.org//download.html?project=multimedia%3Aproaudio&package=vaporizer2-vst3)

Meta-package that pulls all flavors and factory data:
[vaporizer2-full](https://software.opensuse.org//download.html?project=multimedia%3Aproaudio&package=vaporizer2-full)

