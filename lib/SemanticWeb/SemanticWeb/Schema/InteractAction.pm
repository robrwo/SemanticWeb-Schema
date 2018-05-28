package SemanticWeb::Schema::InteractAction;

# ABSTRACT: The act of interacting with another person or organization.

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of interacting with another person or organization.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'InteractAction' }



=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
