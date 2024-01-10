use utf8;

package SemanticWeb::Schema::annualPercentageRate;

# ABSTRACT: The annual rate that is charged for borrowing (or made by investing)

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'annualPercentageRate';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The annual rate that is charged for borrowing (or made by investing),
expressed as a single percentage number that represents the actual yearly
cost of funds over the term of a loan. This includes any fees or additional
costs associated with the transaction.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
