use utf8;

package SemanticWeb::Schema::exifData;

# ABSTRACT: exif data for this object.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'exifData';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

exif data for this object.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
