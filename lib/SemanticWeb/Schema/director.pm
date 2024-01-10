use utf8;

package SemanticWeb::Schema::director;

# ABSTRACT: A director of e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'director';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A director of e.g. TV, radio, movie, video gaming etc. content, or of an
event. Directors can be associated with individual items or with a series,
episode, clip.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
