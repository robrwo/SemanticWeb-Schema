use utf8;

package SemanticWeb::Schema::credentialCategory;

# ABSTRACT: The category or type of credential being described

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'credentialCategory';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The category or type of credential being described, for example "degree”,
“certificate”, “badge”, or more specific term.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
