use utf8;

package SemanticWeb::Schema::BrainStructure;

# ABSTRACT: Any anatomical structure which pertains to the soft nervous tissue functioning as the coordinating center of sensation and intellectual and nervous activity.

use Moo;

extends qw/ SemanticWeb::Schema::AnatomicalStructure /;


use MooX::JSON_LD 'BrainStructure';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v4.0.2';

=encoding utf8

=head1 DESCRIPTION

Any anatomical structure which pertains to the soft nervous tissue
functioning as the coordinating center of sensation and intellectual and
nervous activity.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::AnatomicalStructure>

=cut

1;
