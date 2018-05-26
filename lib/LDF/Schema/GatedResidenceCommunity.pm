package LDF::Schema::GatedResidenceCommunity;

# ABSTRACT: Residence type: Gated community.

use Moo;

extends qw/ LDF::Schema::Residence /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Residence type: Gated community.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'GatedResidenceCommunity' }



=head1 SEE ALSO



L<LDF::Schema::Residence>

=cut

1;
