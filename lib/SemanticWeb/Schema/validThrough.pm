use utf8;

package SemanticWeb::Schema::validThrough;

# ABSTRACT: The date after when the item is not valid

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'validThrough';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The date after when the item is not valid. For example the end of an offer,
salary period, or a period of opening hours.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
