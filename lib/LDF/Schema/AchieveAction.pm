package LDF::Schema::AchieveAction;

# ABSTRACT: The act of accomplishing something via previous efforts

use Moo;

extends qw/ LDF::Schema::Action /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of accomplishing something via previous efforts. It is an
instantaneous action rather than an ongoing process.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'AchieveAction' }



=head1 SEE ALSO



L<LDF::Schema::Action>

=cut

1;
