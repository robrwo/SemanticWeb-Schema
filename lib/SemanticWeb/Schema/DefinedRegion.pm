use utf8;

package SemanticWeb::Schema::DefinedRegion;

# ABSTRACT: DefinedRegion is a DefinedRegion

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'DefinedRegion';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v7.0.4';

=encoding utf8

=head1 DESCRIPTION

DefinedRegion is a DefinedRegion




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
