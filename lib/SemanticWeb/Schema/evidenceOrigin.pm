use utf8;

package SemanticWeb::Schema::evidenceOrigin;

# ABSTRACT: Source of the data used to formulate the guidance

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'evidenceOrigin';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Source of the data used to formulate the guidance, e.g. RCT, consensus
opinion, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
