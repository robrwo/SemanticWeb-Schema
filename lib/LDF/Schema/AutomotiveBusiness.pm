package LDF::Schema::AutomotiveBusiness;

# ABSTRACT: Car repair, sales, or parts.

use Moo;

extends qw/ LDF::Schema::LocalBusiness /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Car repair, sales, or parts.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'AutomotiveBusiness' }



=head1 SEE ALSO



L<LDF::Schema::LocalBusiness>

=cut

1;
