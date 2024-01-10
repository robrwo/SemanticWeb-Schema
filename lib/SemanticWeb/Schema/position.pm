use utf8;

package SemanticWeb::Schema::position;

# ABSTRACT: The position of an item in a series or sequence of items.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'position';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The position of an item in a series or sequence of items.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
