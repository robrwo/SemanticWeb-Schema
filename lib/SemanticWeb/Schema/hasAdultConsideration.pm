use utf8;

package SemanticWeb::Schema::hasAdultConsideration;

# ABSTRACT: Used to tag an item to be intended or suitable for consumption or use by adults only.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'hasAdultConsideration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Used to tag an item to be intended or suitable for consumption or use by
adults only.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
