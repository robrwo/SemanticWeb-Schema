use utf8;

package SemanticWeb::Schema::Nonprofit501c2;

# ABSTRACT: Nonprofit501c2: Non-profit type referring to Title-holding Corporations for Exempt Organizations.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Nonprofit501c2';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Nonprofit501c2: Non-profit type referring to Title-holding Corporations for
Exempt Organizations.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
