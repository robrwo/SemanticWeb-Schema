use utf8;

package SemanticWeb::Schema::medicineSystem;

# ABSTRACT: The system of medicine that includes this MedicalEntity

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'medicineSystem';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The system of medicine that includes this MedicalEntity, for example
'evidence-based', 'homeopathic', 'chiropractic', etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
