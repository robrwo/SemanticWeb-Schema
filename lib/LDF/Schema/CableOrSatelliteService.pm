package LDF::Schema::CableOrSatelliteService;

# ABSTRACT: A service which provides access to media programming like TV or radio

use Moo;

extends qw/ LDF::Schema::Service /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A service which provides access to media programming like TV or radio.
Access may be via cable or satellite.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'CableOrSatelliteService' }



=head1 SEE ALSO



L<LDF::Schema::Service>

=cut

1;
