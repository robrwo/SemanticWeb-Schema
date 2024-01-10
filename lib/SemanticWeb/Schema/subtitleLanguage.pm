use utf8;

package SemanticWeb::Schema::subtitleLanguage;

# ABSTRACT: Languages in which subtitles/captions are available

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'subtitleLanguage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Languages in which subtitles/captions are available, in [IETF BCP 47
standard format](http://tools.ietf.org/html/bcp47).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
