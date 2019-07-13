use utf8;

package SemanticWeb::Schema::MedicalRiskScore;

# ABSTRACT: A simple system that adds up the number of risk factors to yield a score that is associated with prognosis

use Moo;

extends qw/ SemanticWeb::Schema::MedicalRiskEstimator /;


use MooX::JSON_LD 'MedicalRiskScore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v3.8.1';

=encoding utf8

=head1 DESCRIPTION

A simple system that adds up the number of risk factors to yield a score
that is associated with prognosis, e.g. CHAD score, TIMI risk score.




=head1 ATTRIBUTES


=head2 C<algorithm>



The algorithm or rules to follow to compute the score.


A algorithm should be one of the following types:

=over

=item C<Str>

=back

=cut

has algorithm => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'algorithm',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalRiskEstimator>

=cut

1;
