use utf8;

package SemanticWeb::Schema::Optometric;

# ABSTRACT: The science or practice of testing visual acuity and prescribing corrective lenses.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalBusiness /;


use MooX::JSON_LD 'Optometric';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The science or practice of testing visual acuity and prescribing corrective
lenses.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalBusiness>

=cut

1;
