use utf8;

package SemanticWeb::Schema::Physiotherapy;

# ABSTRACT: The practice of treatment of disease

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalBusiness /;


use MooX::JSON_LD 'Physiotherapy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The practice of treatment of disease, injury, or deformity by physical
methods such as massage, heat treatment, and exercise rather than by drugs
or surgery.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalBusiness>

=cut

1;
