use utf8;

package SemanticWeb::Schema::numberOfCredits;

# ABSTRACT: The number of credits or units awarded by a Course or required to complete an EducationalOccupationalProgram.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'numberOfCredits';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number of credits or units awarded by a Course or required to complete
an EducationalOccupationalProgram.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
