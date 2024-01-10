use utf8;

package SemanticWeb::Schema::Nonprofit501k;

# ABSTRACT: Nonprofit501k: Non-profit type referring to Child Care Organizations.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Nonprofit501k';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Nonprofit501k: Non-profit type referring to Child Care Organizations.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
