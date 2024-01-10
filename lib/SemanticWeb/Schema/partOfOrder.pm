use utf8;

package SemanticWeb::Schema::partOfOrder;

# ABSTRACT: The overall order the items in this delivery were included in.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'partOfOrder';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The overall order the items in this delivery were included in.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
