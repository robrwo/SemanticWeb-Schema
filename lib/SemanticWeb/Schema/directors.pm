use utf8;

package SemanticWeb::Schema::directors;

# ABSTRACT: A director of e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'directors';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A director of e.g. TV, radio, movie, video games etc. content. Directors
can be associated with individual items or with a series, episode, clip.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
