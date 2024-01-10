use utf8;

package SemanticWeb::Schema::paymentStatus;

# ABSTRACT: The status of payment; whether the invoice has been paid or not.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'paymentStatus';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The status of payment; whether the invoice has been paid or not.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
