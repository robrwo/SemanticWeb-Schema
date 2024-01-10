use utf8;

package SemanticWeb::Schema::itinerary;

# ABSTRACT: Destination(s) ( [[Place]] ) that make up a trip

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'itinerary';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Destination(s) ( L<SemanticWeb::Schema::Place> ) that make up a trip. For a trip where destination order is important use L<SemanticWeb::Schema::ItemList> to specify that order (see examples).



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
