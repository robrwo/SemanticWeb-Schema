package SemanticWeb::Schema::LiquorStore;

# ABSTRACT: A shop that sells alcoholic drinks such as wine

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use curry;
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A shop that sells alcoholic drinks such as wine, beer, whisky and other
spirits.




=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'LiquorStore' }



=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
