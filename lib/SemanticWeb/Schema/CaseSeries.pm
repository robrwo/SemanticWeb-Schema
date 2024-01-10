use utf8;

package SemanticWeb::Schema::CaseSeries;

# ABSTRACT: A case series (also known as a clinical series) is a medical research study that tracks patients with a known exposure given similar treatment or examines their medical records for exposure and outcome

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'CaseSeries';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A case series (also known as a clinical series) is a medical research study
that tracks patients with a known exposure given similar treatment or
examines their medical records for exposure and outcome. A case series can
be retrospective or prospective and usually involves a smaller number of
patients than the more powerful case-control studies or randomized
controlled trials. Case series may be consecutive or non-consecutive,
depending on whether all cases presenting to the reporting authors over a
period of time were included, or only a selection.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
