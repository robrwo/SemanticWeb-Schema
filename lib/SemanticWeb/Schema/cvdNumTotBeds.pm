use utf8;

package SemanticWeb::Schema::cvdNumTotBeds;

# ABSTRACT: numtotbeds - ALL HOSPITAL BEDS: Total number of all inpatient and outpatient beds

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'cvdNumTotBeds';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

numtotbeds - ALL HOSPITAL BEDS: Total number of all inpatient and
outpatient beds, including all staffed, ICU, licensed, and overflow (surge)
beds used for inpatients or outpatients.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
