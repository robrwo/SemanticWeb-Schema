use utf8;

package SemanticWeb::Schema::amount;

# ABSTRACT: The amount of money.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'amount';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The amount of money.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
