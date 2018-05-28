package SemanticWeb::Schema::ItemListOrderType;

# ABSTRACT: Enumerated for values for itemListOrder for indicating how an ordered ItemList is organized.

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Enumerated for values for itemListOrder for indicating how an ordered
ItemList is organized.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ItemListOrderType' }



=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
