package LDF::Schema::Hospital;

# ABSTRACT: A hospital.

use Moo;

extends qw/ LDF::Schema::MedicalOrganization LDF::Schema::CivicStructure LDF::Schema::EmergencyService /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A hospital.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Hospital' }



=head1 SEE ALSO



L<LDF::Schema::EmergencyService>

=cut

1;
