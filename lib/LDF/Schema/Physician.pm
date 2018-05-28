package LDF::Schema::Physician;

# ABSTRACT: A doctor's office.

use Moo;

extends qw/ LDF::Schema::MedicalOrganization /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A doctor's office.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Physician' }



=head1 SEE ALSO



L<LDF::Schema::MedicalOrganization>

=cut

1;
