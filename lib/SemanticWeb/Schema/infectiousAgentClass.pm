use utf8;

package SemanticWeb::Schema::infectiousAgentClass;

# ABSTRACT: The class of infectious agent (bacteria

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'infectiousAgentClass';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The class of infectious agent (bacteria, prion, etc.) that causes the
disease.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
