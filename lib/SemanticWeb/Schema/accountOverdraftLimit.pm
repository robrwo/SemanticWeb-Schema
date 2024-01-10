use utf8;

package SemanticWeb::Schema::accountOverdraftLimit;

# ABSTRACT: An overdraft is an extension of credit from a lending institution when an account reaches zero

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'accountOverdraftLimit';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An overdraft is an extension of credit from a lending institution when an
account reaches zero. An overdraft allows the individual to continue
withdrawing money even if the account has no funds in it. Basically the
bank allows people to borrow a set amount of money.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
