#!/bin/sh

sed -i -e 's/'"$1"'/'"$2"'/g' *
sed -i -e 's/'"$1"'/'"$2"'/g' images/*
