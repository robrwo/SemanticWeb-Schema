use utf8;

package SemanticWeb::Schema::Nonprofit501c14;

# ABSTRACT: Nonprofit501c14: Non-profit type referring to State-Chartered Credit Unions

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Nonprofit501c14';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Nonprofit501c14: Non-profit type referring to State-Chartered Credit
Unions, Mutual Reserve Funds.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
