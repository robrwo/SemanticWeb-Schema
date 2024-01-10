use utf8;

package SemanticWeb::Schema::videoFormat;

# ABSTRACT: The type of screening or video broadcast used (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'videoFormat';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The type of screening or video broadcast used (e.g. IMAX, 3D, SD, HD,
etc.).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
