use utf8;

package SemanticWeb::Schema::worstRating;

# ABSTRACT: The lowest value allowed in this rating system

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'worstRating';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The lowest value allowed in this rating system. If worstRating is omitted,
1 is assumed.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
