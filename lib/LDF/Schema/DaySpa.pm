package LDF::Schema::DaySpa;

# ABSTRACT: A day spa.

use Moo;

extends qw/ LDF::Schema::HealthAndBeautyBusiness /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A day spa.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'DaySpa' }



=head1 SEE ALSO



L<LDF::Schema::HealthAndBeautyBusiness>

=cut

1;
