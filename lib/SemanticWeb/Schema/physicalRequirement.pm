use utf8;

package SemanticWeb::Schema::physicalRequirement;

# ABSTRACT: A description of the types of physical activity associated with the job

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'physicalRequirement';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A description of the types of physical activity associated with the job.
Defined terms such as those in O*net may be used, but note that there is no
way to specify the level of ability as well as its nature when using a
defined term.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
