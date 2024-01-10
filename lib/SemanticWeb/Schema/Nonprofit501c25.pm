use utf8;

package SemanticWeb::Schema::Nonprofit501c25;

# ABSTRACT: Nonprofit501c25: Non-profit type referring to Real Property Title-Holding Corporations or Trusts with Multiple Parents.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Nonprofit501c25';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Nonprofit501c25: Non-profit type referring to Real Property Title-Holding
Corporations or Trusts with Multiple Parents.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
