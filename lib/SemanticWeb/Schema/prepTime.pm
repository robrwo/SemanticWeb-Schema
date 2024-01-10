use utf8;

package SemanticWeb::Schema::prepTime;

# ABSTRACT: The length of time it takes to prepare the items to be used in instructions or a direction

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'prepTime';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The length of time it takes to prepare the items to be used in instructions
or a direction, in [ISO 8601 duration
format](http://en.wikipedia.org/wiki/ISO_8601).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
