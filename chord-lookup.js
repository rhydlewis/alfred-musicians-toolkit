#!/usr/bin/env node

const { Chord } = require('tonal');

// Get the chord name from command line arguments
const chordName = process.argv[2];

if (!chordName) {
  console.log('Please provide a chord name as an argument');
  process.exit(1);
}

try {
  // Parse the chord and get its notes
  const chord = Chord.get(chordName);
  
  if (!chord || !chord.notes || chord.notes.length === 0) {
    console.log(`Could not find notes for chord: ${chordName}`);
    process.exit(1);
  }

  // Format the output for Alfred
  const notes = chord.notes.join(' ');
  const output = {
    items: [
      {
        title: `${chordName} chord notes`,
        subtitle: notes,
        arg: notes,
        text: {
          copy: notes,
          largetype: notes
        }
      }
    ]
  };

  console.log(JSON.stringify(output));
} catch (error) {
  console.log(`Error parsing chord "${chordName}": ${error.message}`);
  process.exit(1);
}