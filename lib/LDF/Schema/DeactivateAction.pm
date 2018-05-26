package LDF::Schema::DeactivateAction;

# ABSTRACT: The act of stopping or deactivating a device or application (e

use Moo;

extends qw/ LDF::Schema::ControlAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of stopping or deactivating a device or application (e.g. stopping
a timer or turning off a flashlight).




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'DeactivateAction' }



=head1 SEE ALSO



L<LDF::Schema::ControlAction>

=cut

1;
