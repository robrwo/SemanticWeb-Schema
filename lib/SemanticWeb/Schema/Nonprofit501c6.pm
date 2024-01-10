use utf8;

package SemanticWeb::Schema::Nonprofit501c6;

# ABSTRACT: Nonprofit501c6: Non-profit type referring to Business Leagues

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Nonprofit501c6';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Nonprofit501c6: Non-profit type referring to Business Leagues, Chambers of
Commerce, Real Estate Boards.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
