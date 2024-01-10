use utf8;

package SemanticWeb::Schema::Nonprofit501c26;

# ABSTRACT: Nonprofit501c26: Non-profit type referring to State-Sponsored Organizations Providing Health Coverage for High-Risk Individuals.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Nonprofit501c26';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Nonprofit501c26: Non-profit type referring to State-Sponsored Organizations
Providing Health Coverage for High-Risk Individuals.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
