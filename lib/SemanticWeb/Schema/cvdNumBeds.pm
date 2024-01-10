use utf8;

package SemanticWeb::Schema::cvdNumBeds;

# ABSTRACT: numbeds - HOSPITAL INPATIENT BEDS: Inpatient beds

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'cvdNumBeds';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

numbeds - HOSPITAL INPATIENT BEDS: Inpatient beds, including all staffed,
licensed, and overflow (surge) beds used for inpatients.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
