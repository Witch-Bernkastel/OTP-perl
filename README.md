# OTP-perl
Simples scripts Perl para gerar códigos TOTP (Google Authenticator) a partir de chaves Base32.

# Funcionalidades

- `obterOTP.pl`: Gera e exibe o código
- `obterOTP2.pl`: Gera, exibe e copia para o clipboard
- Ambos geram logs chamado "otp_log.txt".

# Necessário
Authen::OATH
MIME::Base32
Win32::Clipboard

# Como usar
Depois de ter instalado Authen::OATH, MIME::Base32 e Win32::Clipboard, você pode executar:
``` perl obterOTP.perl contaX ```
ou
``` perl obterOTP2.perl contaX ```

X = número da conta, neste código vai até o 10, mas pode adicionar quantos quiser.
