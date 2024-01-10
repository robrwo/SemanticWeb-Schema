use utf8;

package SemanticWeb::Schema::PrimaryCare;

# ABSTRACT: The medical care by a physician

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalBusiness /;


use MooX::JSON_LD 'PrimaryCare';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The medical care by a physician, or other health-care professional, who is
the patient's first contact with the health-care system and who may
recommend a specialist if necessary.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalBusiness>

=cut

1;
