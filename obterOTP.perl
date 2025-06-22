use strict;
use warnings;
use Authen::OATH;
use MIME::Base32;

# 'CHAVExBASE32' são as chaves para cada conta
my %secrets = (
  conta1 => 'CHAVE1BASE32',
  conta2 => 'CHAVE2BASE32',
  conta3 => 'CHAVE3BASE32',
  conta4 => 'CHAVE4BASE32',
  conta5 => 'CHAVE5BASE32',
  conta6 => 'CHAVE6BASE32',
  conta7 => 'CHAVE7BASE32',
  conta8 => 'CHAVE8BASE32',
  conta9 => 'CHAVE9BASE32',
  conta10 => 'CHAVE10BASE32',
);

my $conta = $ARGV[0] or die "Informe o nome da conta, execute no terminal 'perl ObterOTP.perl contaX', X é o número da sua conta\n";
my $secret_base32 = $secrets{$conta} or die "Conta desconhecida\n";

my $secret = MIME::Base32::decode_rfc3548($secret_base32);
my $otp = Authen::OATH->new()->totp($secret);

# Apenas mostra o OTP
print "OTP: $otp\n";

# Log
my $agora = scalar localtime();
my $linha_log = "$agora - $conta - OTP: $otp\n";

open(my $fh, '>>', 'otp_log.txt') or die "Não foi possível abrir o arquivo de log: $!";
print $fh $linha_log;
close($fh);
