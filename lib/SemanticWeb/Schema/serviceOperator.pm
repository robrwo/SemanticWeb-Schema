use utf8;

package SemanticWeb::Schema::serviceOperator;

# ABSTRACT: The operating organization

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'serviceOperator';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The operating organization, if different from the provider. This enables
the representation of services that are provided by an organization, but
operated by another organization like a subcontractor.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
