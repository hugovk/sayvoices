#!/bin/bash

echo Say all voices in that voice

for VOICE in Agnes Albert Alex Alice Alva Amelie Anna "Bad News" Bahh Bells Boing Bruce Bubbles Carmit Cellos Damayanti Daniel Deranged Diego Ellen Fiona Fred "Good News" Hysterical Ioana Joana Junior Kanya Karen Kathy Kyoko Laura Lekha Luciana Maged Mariska Mei-Jia Melina Milena Moira Monica Nora Paulina "Pipe Organ" Princess Ralph Samantha Sara Satu Sin-ji Tessa Thomas Ting-Ting Trinoids Veena Vicki Victoria Whisper Xander Yelda Yuna Zarvox Zosia Zuzana
do
    echo $VOICE
    # Say to speaker
#     say -v "$VOICE" "$VOICE"

    # Say to file
    say -v "$VOICE" "$VOICE" -o "$VOICE.aiff"

    # Compress to mp3
    ffmpeg -i "$VOICE.aiff" "$VOICE.mp3"
done

# All to one file
sox *.aiff all.aiff
ffmpeg -i "all.aiff" "all.mp3"

# Clean up
rm *.aiff
