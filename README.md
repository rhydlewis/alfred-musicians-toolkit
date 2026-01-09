# Alfred Chord Lookup Workflow

A simple Alfred workflow that allows you to look up the notes in any musical chord using the tonal.js library.

## Installation

1. Make sure you have Node.js installed on your system
2. Install the required dependencies:
   ```bash
   npm install
   ```
3. Double-click on the `ChordLookup.alfredworkflow` file to install it in Alfred

## Usage

1. Open Alfred
2. Type `chord` followed by a space and then the chord name you want to look up
3. Examples:
   - `chord Amaj7` - Shows notes for A major 7th chord
   - `chord Bbm9` - Shows notes for B flat minor 9th chord  
   - `chord F#maj9` - Shows notes for F sharp major 9th chord
   - `chord C` - Shows notes for C major chord
   - `chord G#dim7` - Shows notes for G sharp diminished 7th chord

## Features

- Supports all standard chord notations
- Shows the constituent notes of any chord
- Copy notes to clipboard with one click
- View notes in large type for easy reading
- Handles complex chords with extensions and alterations

## Supported Chord Types

The workflow supports all chord types recognized by tonal.js, including:

- Major chords: C, Cmaj, Cmajor
- Minor chords: Cm, Cmin, Cminor
- Seventh chords: C7, Cmaj7, Cm7, Cm7b5, etc.
- Extended chords: C9, C11, C13, Cmaj9, etc.
- Altered chords: C7#9, C7b9, C7#11, etc.
- Suspended chords: Csus2, Csus4
- Diminished chords: Cdim, C°
- Augmented chords: Caug, C+

## Technical Details

- Uses tonal.js for chord parsing and note calculation
- Outputs JSON format compatible with Alfred's Script Filter
- Includes proper error handling for invalid chord names

## License

This project is licensed under the ISC License.