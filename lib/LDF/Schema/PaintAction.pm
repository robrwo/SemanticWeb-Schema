package LDF::Schema::PaintAction;

# ABSTRACT: The act of producing a painting

use Moo;

extends qw/ LDF::Schema::CreateAction /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

The act of producing a painting, typically with paint and canvas as
instruments.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'PaintAction' }



=head1 SEE ALSO



L<LDF::Schema::CreateAction>

=cut

1;
