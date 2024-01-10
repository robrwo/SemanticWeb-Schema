use utf8;

package SemanticWeb::Schema::Nonprofit501a;

# ABSTRACT: Nonprofit501a: Non-profit type referring to Farmers’ Cooperative Associations.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Nonprofit501a';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Nonprofit501a: Non-profit type referring to Farmers’ Cooperative
Associations.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
