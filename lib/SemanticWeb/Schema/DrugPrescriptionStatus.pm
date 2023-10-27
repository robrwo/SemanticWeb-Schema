use utf8;

package SemanticWeb::Schema::DrugPrescriptionStatus;

# ABSTRACT: Indicates whether this drug is available by prescription or over-the-counter.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::MedicalEnumeration /;


use MooX::JSON_LD 'DrugPrescriptionStatus';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v23.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates whether this drug is available by prescription or
over-the-counter.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEnumeration>

=cut

1;
