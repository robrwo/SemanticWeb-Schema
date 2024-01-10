use utf8;

package SemanticWeb::Schema::pathophysiology;

# ABSTRACT: Changes in the normal mechanical

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'pathophysiology';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Changes in the normal mechanical, physical, and biochemical functions that
are associated with this activity or condition.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
