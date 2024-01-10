use utf8;

package SemanticWeb::Schema::adverseOutcome;

# ABSTRACT: A possible complication and/or side effect of this therapy

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'adverseOutcome';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A possible complication and/or side effect of this therapy. If it is known
that an adverse outcome is serious (resulting in death, disability, or
permanent damage; requiring hospitalization; or otherwise life-threatening
or requiring immediate medical attention), tag it as a
seriousAdverseOutcome instead.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
