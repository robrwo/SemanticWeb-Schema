package LDF::Schema::MarryAction;

# ABSTRACT: The act of marrying a person.

use Moo;

extends qw/ LDF::Schema::InteractAction /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of marrying a person.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'MarryAction' }



=head1 SEE ALSO



L<LDF::Schema::InteractAction>

=cut

1;
