use utf8;

package SemanticWeb::Schema::Nonprofit501c20;

# ABSTRACT: Nonprofit501c20: Non-profit type referring to Group Legal Services Plan Organizations.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Nonprofit501c20';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Nonprofit501c20: Non-profit type referring to Group Legal Services Plan
Organizations.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
