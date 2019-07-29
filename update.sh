#!/bin/bash

echo "Updating ~/.vimrc file..."
cp -v ~/.vimrc ./vimrc

echo "Updating ~/.vim/ directory..."
cp -rv  ~/.vim/* .

echo "Update Completed."
