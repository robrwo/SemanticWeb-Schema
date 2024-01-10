use utf8;

package SemanticWeb::Schema::reportNumber;

# ABSTRACT: The number or other unique designator assigned to a Report by the publishing organization.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'reportNumber';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number or other unique designator assigned to a Report by the
publishing organization.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
