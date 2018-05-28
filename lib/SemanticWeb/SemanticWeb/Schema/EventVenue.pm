package SemanticWeb::Schema::EventVenue;

# ABSTRACT: An event venue.

use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An event venue.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'EventVenue' }



=head1 SEE ALSO



L<SemanticWeb::Schema::CivicStructure>

=cut

1;
