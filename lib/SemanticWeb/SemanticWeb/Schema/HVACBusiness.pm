package SemanticWeb::Schema::HVACBusiness;

# ABSTRACT: A business that provide Heating

use Moo;

extends qw/ SemanticWeb::Schema::HomeAndConstructionBusiness /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A business that provide Heating, Ventilation and Air Conditioning services.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'HVACBusiness' }



=head1 SEE ALSO



L<SemanticWeb::Schema::HomeAndConstructionBusiness>

=cut

1;
