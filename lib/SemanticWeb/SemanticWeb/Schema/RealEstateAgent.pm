package SemanticWeb::Schema::RealEstateAgent;

# ABSTRACT: A real-estate agent.

use Moo;

extends qw/ SemanticWeb::Schema::LocalBusiness /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A real-estate agent.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'RealEstateAgent' }



=head1 SEE ALSO



L<SemanticWeb::Schema::LocalBusiness>

=cut

1;
