use utf8;

package SemanticWeb::Schema::embedUrl;

# ABSTRACT: A URL pointing to a player for a specific video

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'embedUrl';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A URL pointing to a player for a specific video. In general, this is the
information in the ```src``` element of an ```embed``` tag and should not
be the same as the content of the ```loc``` tag.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
