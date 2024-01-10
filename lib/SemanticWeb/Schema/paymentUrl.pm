use utf8;

package SemanticWeb::Schema::paymentUrl;

# ABSTRACT: The URL for sending a payment.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'paymentUrl';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The URL for sending a payment.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
