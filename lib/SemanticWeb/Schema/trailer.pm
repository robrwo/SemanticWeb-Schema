use utf8;

package SemanticWeb::Schema::trailer;

# ABSTRACT: The trailer of a movie or TV/radio series

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'trailer';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The trailer of a movie or TV/radio series, season, episode, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
