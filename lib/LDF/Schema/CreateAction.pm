package LDF::Schema::CreateAction;

# ABSTRACT: The act of deliberately creating/producing/generating/building a result out of the agent.

use Moo;

extends qw/ LDF::Schema::Action /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of deliberately creating/producing/generating/building a result out
of the agent.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'CreateAction' }



=head1 SEE ALSO



L<LDF::Schema::Action>

=cut

1;
