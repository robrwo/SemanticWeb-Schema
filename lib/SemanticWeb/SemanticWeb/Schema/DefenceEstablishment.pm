package SemanticWeb::Schema::DefenceEstablishment;

# ABSTRACT: A defence establishment

use Moo;

extends qw/ SemanticWeb::Schema::GovernmentBuilding /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A defence establishment, such as an army or navy base.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'DefenceEstablishment' }



=head1 SEE ALSO



L<SemanticWeb::Schema::GovernmentBuilding>

=cut

1;
