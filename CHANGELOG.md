## [3.4.0] - 2023-12-02
Please make sure that you have uninstalled older versions of Vaporizer2 or have manually deleted all VASTvaporizer2*.* plugins on your system before installing. Due to filename changes otherwise it wouild lead to mixed versions installed. Make sure that the installed plugin in your DAW shows version number 3.4.0 on the top right.

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
- Linux installer in preparation
