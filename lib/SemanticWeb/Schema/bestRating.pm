use utf8;

package SemanticWeb::Schema::bestRating;

# ABSTRACT: The highest value allowed in this rating system

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'bestRating';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The highest value allowed in this rating system. If bestRating is omitted,
5 is assumed.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
