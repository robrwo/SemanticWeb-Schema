package LDF::Schema::HealthClub;

# ABSTRACT: A health club.

use Moo;

extends qw/ LDF::Schema::SportsActivityLocation LDF::Schema::HealthAndBeautyBusiness /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A health club.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'HealthClub' }



=head1 SEE ALSO



L<LDF::Schema::HealthAndBeautyBusiness>

=cut

1;
