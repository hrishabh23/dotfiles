#!/bin/bash

echo "Updating ~/.vimrc file..."
cp ~/.vimrc ./vimrc

echo "Updating ~/.vim/ directory..."
cp -r  ~/.vim/* .

echo "Update Completed."
