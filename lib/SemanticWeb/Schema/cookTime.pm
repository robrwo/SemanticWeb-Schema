use utf8;

package SemanticWeb::Schema::cookTime;

# ABSTRACT: The time it takes to actually cook the dish

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'cookTime';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The time it takes to actually cook the dish, in [ISO 8601 duration
format](http://en.wikipedia.org/wiki/ISO_8601).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
