use utf8;

package SemanticWeb::Schema::priceSpecification;

# ABSTRACT: One or more detailed price specifications

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'priceSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

One or more detailed price specifications, indicating the unit price and
delivery or payment charges.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
