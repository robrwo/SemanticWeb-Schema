use utf8;

package SemanticWeb::Schema::openingHoursSpecification;

# ABSTRACT: The opening hours of a certain place.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'openingHoursSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The opening hours of a certain place.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
