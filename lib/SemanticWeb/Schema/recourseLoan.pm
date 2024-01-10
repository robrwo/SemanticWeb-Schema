use utf8;

package SemanticWeb::Schema::recourseLoan;

# ABSTRACT: The only way you get the money back in the event of default is the security

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'recourseLoan';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The only way you get the money back in the event of default is the
security. Recourse is where you still have the opportunity to go back to
the borrower for the rest of the money.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
