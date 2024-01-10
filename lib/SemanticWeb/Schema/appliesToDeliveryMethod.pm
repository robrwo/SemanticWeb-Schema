use utf8;

package SemanticWeb::Schema::appliesToDeliveryMethod;

# ABSTRACT: The delivery method(s) to which the delivery charge or payment charge specification applies.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'appliesToDeliveryMethod';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The delivery method(s) to which the delivery charge or payment charge
specification applies.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
