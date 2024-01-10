use utf8;

package SemanticWeb::Schema::Nonprofit501n;

# ABSTRACT: Nonprofit501n: Non-profit type referring to Charitable Risk Pools.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Nonprofit501n';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Nonprofit501n: Non-profit type referring to Charitable Risk Pools.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
