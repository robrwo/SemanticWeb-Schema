use utf8;

package SemanticWeb::Schema::renegotiableLoan;

# ABSTRACT: Whether the terms for payment of interest can be renegotiated during the life of the loan.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'renegotiableLoan';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Whether the terms for payment of interest can be renegotiated during the
life of the loan.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
