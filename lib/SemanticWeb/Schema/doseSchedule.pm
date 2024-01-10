use utf8;

package SemanticWeb::Schema::doseSchedule;

# ABSTRACT: A dosing schedule for the drug for a given population

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'doseSchedule';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A dosing schedule for the drug for a given population, either observed,
recommended, or maximum dose based on the type used.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
