# Variables and notables
$schannelProtocols="HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\"
$schannelCiphers="HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\"

#################
# Enable TLS1.2#
#################

# Make Transport Layer Security (TLS) 1.2 protocol registry keys
md $schannelProtocols"TLS 1.2"
md $schannelProtocols"TLS 1.2\Server"
md $schannelProtocols"TLS 1.2\Client"
# Enable TLS 1.2 for client and server SCHANNEL communications
new-itemproperty -path $schannelProtocols"TLS 1.2\Server" -name "Enabled" -value 1 -PropertyType "DWord"
new-itemproperty -path $schannelProtocols"TLS 1.2\Server" -name "DisabledByDefault" -value 0 -PropertyType "DWord"
new-itemproperty -path $schannelProtocols"TLS 1.2\Client" -name "Enabled" -value 1 -PropertyType "DWord"
new-itemproperty -path $schannelProtocols"TLS 1.2\Client" -name "DisabledByDefault" -value 0 -PropertyType "DWord"

#################
# Disable TLS1.1#
#################

# Make Transport Layer Security (TLS) 1.1 protocol registry keys#
md $schannelProtocols"TLS 1.1"
md $schannelProtocols"TLS 1.1\Client"
md $schannelProtocols"TLS 1.1\Server"

# Disable TLS 1.1 for client and server SCHANNEL communications
new-itemproperty -path $schannelProtocols"TLS 1.1\Server" -name "Enabled" -value 0 -PropertyType "DWord"
new-itemproperty -path $schannelProtocols"TLS 1.1\Server" -name "DisabledByDefault" -value 1 -PropertyType "DWord"
new-itemproperty -path $schannelProtocols"TLS 1.1\Client" -name "Enabled" -value 0 -PropertyType "DWord"
new-itemproperty -path $schannelProtocols"TLS 1.1\Client" -name "DisabledByDefault" -value 1 -PropertyType "DWord"

# Disable Secure Sockets Layer (SSL) 2.0
md $schannelProtocols"SSL 2.0\Server"
new-itemproperty -path $schannelProtocols"SSL 2.0\Server" -name Enabled -value 0 -PropertyType "DWord"

# Disable SSL 3.0
md $schannelProtocols"SSL 3.0\Server"
new-itemproperty -path $schannelProtocols"SSL 3.0\Server" -name Enabled -value 0 -PropertyType "DWord"

#######################
# Disable weak cyphers#
#######################
md $schannelCiphers"Null"
new-itemproperty -path $schannelCiphers"Null" -name "Enabled" -value 0 -PropertyType "Dword"
md $schannelCiphers"DES 56"
md $schannelCiphers"DES 56/56"
new-itemproperty -path $schannelCiphers"DES 56/56" -name "Enabled" -value 0 -PropertyType "Dword"
md $schannelCiphers"RC2 40"
md $schannelCiphers"RC2 40/128"
new-itemproperty -path $schannelCiphers"RC2 40/128" -name "Enabled" -value 0 -PropertyType "Dword"
md $schannelCiphers"RC2 56"
md $schannelCiphers"RC2 56/128"
new-itemproperty -path $schannelCiphers"RC2 40/128" -name "Enabled" -value 0 -PropertyType "Dword"
md $schannelCiphers"RC2 128"
md $schannelCiphers"RC2 128/128"
new-itemproperty -path $schannelCiphers"RC2 128/128" -name "Enabled" -value 0 -PropertyType "Dword"
md $schannelCiphers"RC4 40"
md $schannelCiphers"RC4 40/128"
new-itemproperty -path $schannelCiphers"RC4 40/128" -name "Enabled" -value 0 -PropertyType "Dword"
md $schannelCiphers"RC4 56"
md $schannelCiphers"RC4 56/128"
new-itemproperty -path $schannelCiphers"RC4 56/128" -name "Enabled" -value 0 -PropertyType "Dword"
md $schannelCiphers"RC4 64"
md $schannelCiphers"RC4 64/128"
new-itemproperty -path $schannelCiphers"RC4 64/128" -name "Enabled" -value 0 -PropertyType "Dword"
md $schannelCiphers"Triple DES 168"
md $schannelCiphers"Triple DES 168/168"
new-itemproperty -path $schannelCiphers"Triple DES 168/168" -name "Enabled" -value 0 -PropertyType "Dword"
md $schannelCiphers"AES 128"
md $schannelCiphers"AES 128/128"
new-itemproperty -path $schannelCiphers"AES 128/128" -name "Enabled" -value 0 -PropertyType "Dword"

# Enable strong cyphers
md $schannelCiphers"RC4 128"
md $schannelCiphers"RC4 128/128" 
new-itemproperty -path $schannelCiphers"RC4 128/128" -name "Enabled" -value 1 -PropertyType "Dword"
md $schannelCiphers"AES 256"
md $schannelCiphers"AES 256/256"
new-itemproperty -path $schannelCiphers"AES 256/256" -name "Enabled" -value 1 -PropertyType "Dword"
