use utf8;

package SemanticWeb::Schema::differentialDiagnosis;

# ABSTRACT: One of a set of differential diagnoses for the condition

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'differentialDiagnosis';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

One of a set of differential diagnoses for the condition. Specifically, a
closely-related or competing diagnosis typically considered later in the
cognitive process whereby this medical condition is distinguished from
others most likely responsible for a similar collection of signs and
symptoms to reach the most parsimonious diagnosis or diagnoses in a
patient.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
