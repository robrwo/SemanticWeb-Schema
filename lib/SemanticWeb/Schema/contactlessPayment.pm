use utf8;

package SemanticWeb::Schema::contactlessPayment;

# ABSTRACT: A secure method for consumers to purchase products or services via debit

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'contactlessPayment';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A secure method for consumers to purchase products or services via debit,
credit or smartcards by using RFID or NFC technology.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
