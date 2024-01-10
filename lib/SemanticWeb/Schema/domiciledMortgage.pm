use utf8;

package SemanticWeb::Schema::domiciledMortgage;

# ABSTRACT: Whether borrower is a resident of the jurisdiction where the property is located.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'domiciledMortgage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Whether borrower is a resident of the jurisdiction where the property is
located.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
