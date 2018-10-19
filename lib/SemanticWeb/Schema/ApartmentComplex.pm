use utf8;

package SemanticWeb::Schema::ApartmentComplex;

# ABSTRACT: Residence type: Apartment complex.

use Moo;

extends qw/ SemanticWeb::Schema::Residence /;


use MooX::JSON_LD 'ApartmentComplex';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.3';

=encoding utf8

=head1 DESCRIPTION

Residence type: Apartment complex.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Residence>

=cut

1;
