use utf8;

package SemanticWeb::Schema::aggregateRating;

# ABSTRACT: The overall rating

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'aggregateRating';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The overall rating, based on a collection of reviews or ratings, of the
item.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
