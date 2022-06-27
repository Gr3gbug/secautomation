# Scopo
Lo script 'cipherFixScript' serve ad implementare i fix relativi alle vulnerabilità dei cifrari deboli rilevati da uno scanner (e.g. Nessus, Rapid7, etc.)

## Utilizzo
Per utilizzare lo script, procedi come segue:
 
1. Lancia powershell come amministratore
2. Naviga nella cartella contente lo script, ad es:
	cd C:\Users\<username>\<script_folder>
3. Esegui il comando: 
	powershell -ExecutionPolicy Bypass -File .\cipherFixScript.ps1
Questo comando serve a permettere l'esecuzione dello script bypassando il controllo delle security policies