use utf8;

package SemanticWeb::Schema::maximumIntake;

# ABSTRACT: Recommended intake of this supplement for a given population as defined by a specific recommending authority.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'maximumIntake';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Recommended intake of this supplement for a given population as defined by
a specific recommending authority.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
