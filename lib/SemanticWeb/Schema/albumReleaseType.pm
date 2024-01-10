use utf8;

package SemanticWeb::Schema::albumReleaseType;

# ABSTRACT: The kind of release which this album is: single

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'albumReleaseType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The kind of release which this album is: single, EP or album.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
