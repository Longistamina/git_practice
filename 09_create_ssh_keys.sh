# Run this command to create ssh keys with email
ssh-keygen -t ed25519 -C "your_email@example.com"

# Then it will show this line:
Enter file in which to save the key (/home/yourusername/.ssh/id_ed25519):
# => just press Enter to use the default path /home/yourusername/.ssh/id_ed25519

# Then, this line will show up to ask for paraphrase (like password)
Enter passphrase (empty for no passphrase):
# => just press Enter to select "empty for no passphrase", or type the paraphrase you want

# Copy the public key to the remote server you want to access
ssh-copy-id username@remote-server # like ssh-copy-id Longistamina@github

# Test your SSH login with:
ssh username@remote-server

########################## another way to share the ssh keys to your remote server ############################

# install wl-clipboard
sudo dnf install wl-clipboard

# copy the ssh key to the clipboard
wl-copy < ~/.ssh/id_ed25519.pub

# or using cat to show the ss keys then copy it manually
cat ~/.ssh/id_ed25519.pub

# Then, go to your remote server (github, codeberg, etc) and login in
# Next, go to Settings => SSH and GPG keys => add SSH key (New SSH key) => paste the ssh key
# Finally, sign the key if the remote server require