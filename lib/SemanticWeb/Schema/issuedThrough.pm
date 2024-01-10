use utf8;

package SemanticWeb::Schema::issuedThrough;

# ABSTRACT: The service through which the permit was granted.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'issuedThrough';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The service through which the permit was granted.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
