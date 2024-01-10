use utf8;

package SemanticWeb::Schema::paymentMethodId;

# ABSTRACT: An identifier for the method of payment used (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'paymentMethodId';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An identifier for the method of payment used (e.g. the last 4 digits of the
credit card).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
