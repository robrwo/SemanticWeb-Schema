package SemanticWeb::Schema::TheaterEvent;

# ABSTRACT: Event type: Theater performance.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Event type: Theater performance.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'TheaterEvent' }



=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
