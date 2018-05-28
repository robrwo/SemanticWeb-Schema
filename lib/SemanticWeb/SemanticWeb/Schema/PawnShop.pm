package SemanticWeb::Schema::PawnShop;

# ABSTRACT: A shop that will buy

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A shop that will buy, or lend money against the security of, personal
possessions.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'PawnShop' }



=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
