package SemanticWeb::Schema::Mountain;

# ABSTRACT: A mountain

use Moo;

extends qw/ SemanticWeb::Schema::Landform /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A mountain, like Mount Whitney or Mount Everest.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Mountain' }



=head1 SEE ALSO



L<SemanticWeb::Schema::Landform>

=cut

1;
