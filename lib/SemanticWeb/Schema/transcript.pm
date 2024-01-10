use utf8;

package SemanticWeb::Schema::transcript;

# ABSTRACT: If this MediaObject is an AudioObject or VideoObject

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'transcript';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

If this MediaObject is an AudioObject or VideoObject, the transcript of
that object.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
