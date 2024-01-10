use utf8;

package SemanticWeb::Schema::contentRating;

# ABSTRACT: Official rating of a piece of content—for example

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'contentRating';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Official rating of a piece of content&#x2014;for example, 'MPAA PG-13'.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
