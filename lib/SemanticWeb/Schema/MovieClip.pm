use utf8;

package SemanticWeb::Schema::MovieClip;

# ABSTRACT: A short segment/part of a movie.

use Moo;

extends qw/ SemanticWeb::Schema::Clip /;


use MooX::JSON_LD 'MovieClip';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.2';

=encoding utf8

=head1 DESCRIPTION

A short segment/part of a movie.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Clip>

=cut

1;
