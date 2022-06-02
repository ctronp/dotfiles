if [[ -f $HOME/Downloads/linux-editor-mono.zip ]]
then
  unzip -oq $HOME/Downloads/linux-editor-mono.zip -d $HOME/godot
else
  printf "couldn't get the zip file\n"
  exit 1
fi
chmod u+x -R $HOME/godot
