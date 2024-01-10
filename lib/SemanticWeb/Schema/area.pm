use utf8;

package SemanticWeb::Schema::area;

# ABSTRACT: The area within which users can expect to reach the broadcast service.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'area';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The area within which users can expect to reach the broadcast service.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
