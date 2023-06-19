use utf8;

package SemanticWeb::Schema::ReportedDoseSchedule;

# ABSTRACT: A patient-reported or observed dosing schedule for a drug or supplement.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema::DoseSchedule /;


use MooX::JSON_LD 'ReportedDoseSchedule';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v21.0.0';

=encoding utf8

=head1 DESCRIPTION

A patient-reported or observed dosing schedule for a drug or supplement.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::DoseSchedule>

=cut

1;
