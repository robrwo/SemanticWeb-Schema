use utf8;

package SemanticWeb::Schema::TreatmentsHealthAspect;

# ABSTRACT: Treatments or related therapies for a Topic.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'TreatmentsHealthAspect';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Treatments or related therapies for a Topic.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
