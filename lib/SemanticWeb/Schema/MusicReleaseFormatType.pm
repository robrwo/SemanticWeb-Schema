use utf8;

package SemanticWeb::Schema::MusicReleaseFormatType;

# ABSTRACT: Format of this release (the type of recording media used

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'MusicReleaseFormatType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v22.0.0';

=encoding utf8

=head1 DESCRIPTION

Format of this release (the type of recording media used, i.e. compact
disc, digital media, LP, etc.).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
