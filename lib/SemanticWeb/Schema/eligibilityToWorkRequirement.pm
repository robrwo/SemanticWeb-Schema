use utf8;

package SemanticWeb::Schema::eligibilityToWorkRequirement;

# ABSTRACT: The legal requirements such as citizenship

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'eligibilityToWorkRequirement';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The legal requirements such as citizenship, visa and other documentation
required for an applicant to this job.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
