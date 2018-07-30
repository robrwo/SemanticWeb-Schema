package SemanticWeb::Schema::Winery;

# ABSTRACT: A winery.

use Moo;

extends qw/ SemanticWeb::Schema::FoodEstablishment /;


use MooX::JSON_LD 'Winery';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.2';

=head1 DESCRIPTION

A winery.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::FoodEstablishment>

=cut

1;