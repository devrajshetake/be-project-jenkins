# Revert changes to /etc/ssh/sshd_config
sed -i '/^PubkeyAcceptedKeyTypes=+ssh-rsa$/d' /etc/ssh/sshd_config

# Revert changes to /root/.ssh/authorized_keys
sed -i '/ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCv2tfBGk7Zs7mHEd6jwFwtfQl6oka2KeSyv95TWw28\/ILN9zH6Su\/+hVFW8yOwZqyELrvE0grYOhNR4cF21hTAxqTHPtyNupRcMCI0gVlFRrbzVjIeeXQxmrxUKLTgpMVzUzrmyPTBIKovCqu2FWUu2eYKSIrteBCdd951yJN+7c9VpA9J0tEudDlIHradGh+TjInqWmLNYQQBnP51pZEy3bkaUXpR7cqRSwNjvsTvvB2SiJZDM9t+chK72w6\/nTau4mlxYXKbJBWWCa+DEhA3+ZJ7+6QD2moXT1CndGvMIcl8TC\/STpqXS3qcrHezrYmRkBHkX\/qy5wA1zuW1yK1QupQLsm8BHHPPg40F4YZCxoWM\/AF2Pt+giuxWJDENke2+HL+MMx6970cDiWpKNARV+oSnuGKwqHmL3i1qlNO7evXcgYbWAxa8sXhfJGmrS\/U2nNxiXWduYu9mhcHv03zHnQw7ahnUe0c0xYOJ\/Tbw2NhQ6VPeNJZunWrisd05JJq7u1TDQg2iBu\/MaBh\/orehrr346FZRgh2Oy6rMKCzJHTpZlyf8vDtmmQ4gEUhLtIJ8+JMMdLhF68wG8BNlKKbQFk9VnsZ0prmQ5KnPL2UfeFgNe8S5dwb83d3RUgtWrtFgnf\/kvBLXQqXlIzhKoEkbWkT04b+xgV3yxVsBZ1syyQ== devrajshetake@gmail.com$/d' /root/.ssh/authorized_keys

# Remove /root/.ssh directory if it was created
if [ -d "/root/.ssh" ]; then
    rm -rf /root/.ssh
fi

# Restart SSH service
service ssh restart
