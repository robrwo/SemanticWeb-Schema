package LDF::Schema::OrganizeAction;

# ABSTRACT: The act of manipulating/administering/supervising/controlling one or more objects.

use Moo;

extends qw/ LDF::Schema::Action /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of manipulating/administering/supervising/controlling one or more
objects.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'OrganizeAction' }



=head1 SEE ALSO



L<LDF::Schema::Action>

=cut

1;
