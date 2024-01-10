use utf8;

package SemanticWeb::Schema::MayTreatHealthAspect;

# ABSTRACT: Related topics may be treated by a Topic.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'MayTreatHealthAspect';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Related topics may be treated by a Topic.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
