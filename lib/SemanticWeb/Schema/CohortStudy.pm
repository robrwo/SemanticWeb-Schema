use utf8;

package SemanticWeb::Schema::CohortStudy;

# ABSTRACT: Also known as a panel study

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'CohortStudy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Also known as a panel study. A cohort study is a form of longitudinal study
used in medicine and social science. It is one type of study design and
should be compared with a cross-sectional study. A cohort is a group of
people who share a common characteristic or experience within a defined
period (e.g., are born, leave school, lose their job, are exposed to a drug
or a vaccine, etc.). The comparison group may be the general population
from which the cohort is drawn, or it may be another cohort of persons
thought to have had little or no exposure to the substance under
investigation, but otherwise similar. Alternatively, subgroups within the
cohort may be compared with each other.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
