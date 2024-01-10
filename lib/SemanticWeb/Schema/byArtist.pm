use utf8;

package SemanticWeb::Schema::byArtist;

# ABSTRACT: The artist that performed this album or recording.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'byArtist';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The artist that performed this album or recording.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
