use utf8;

package SemanticWeb::Schema::RespiratoryTherapy;

# ABSTRACT: The therapy that is concerned with the maintenance or improvement of respiratory function (as in patients with pulmonary disease).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalTherapy /;


use MooX::JSON_LD 'RespiratoryTherapy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The therapy that is concerned with the maintenance or improvement of
respiratory function (as in patients with pulmonary disease).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalTherapy>

=cut

1;
