use utf8;

package SemanticWeb::Schema::creditedTo;

# ABSTRACT: The group the release is credited to if different than the byArtist

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'creditedTo';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The group the release is credited to if different than the byArtist. For
example, Red and Blue is credited to "Stefani Germanotta Band", but by Lady
Gaga.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
