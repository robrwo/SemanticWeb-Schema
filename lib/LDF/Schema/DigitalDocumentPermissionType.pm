package LDF::Schema::DigitalDocumentPermissionType;

# ABSTRACT: A type of permission which can be granted for accessing a digital document.

use Moo;

extends qw/ LDF::Schema::Enumeration /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A type of permission which can be granted for accessing a digital document.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'DigitalDocumentPermissionType' }



=head1 SEE ALSO



L<LDF::Schema::Enumeration>

=cut

1;
