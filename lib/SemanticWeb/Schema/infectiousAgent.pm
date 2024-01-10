use utf8;

package SemanticWeb::Schema::infectiousAgent;

# ABSTRACT: The actual infectious agent

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'infectiousAgent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The actual infectious agent, such as a specific bacterium.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
