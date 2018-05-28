package SemanticWeb::Schema::TaxiService;

# ABSTRACT: A service for a vehicle for hire with a driver for local travel

use Moo;

extends qw/ SemanticWeb::Schema::Service /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A service for a vehicle for hire with a driver for local travel. Fares are
usually calculated based on distance traveled.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'TaxiService' }



=head1 SEE ALSO



L<SemanticWeb::Schema::Service>

=cut

1;
