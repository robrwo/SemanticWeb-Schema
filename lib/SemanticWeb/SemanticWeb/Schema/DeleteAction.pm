package SemanticWeb::Schema::DeleteAction;

# ABSTRACT: The act of editing a recipient by removing one of its objects.

use Moo;

extends qw/ SemanticWeb::Schema::UpdateAction /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of editing a recipient by removing one of its objects.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'DeleteAction' }



=head1 SEE ALSO



L<SemanticWeb::Schema::UpdateAction>

=cut

1;
