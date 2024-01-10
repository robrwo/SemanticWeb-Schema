use utf8;

package SemanticWeb::Schema::containedIn;

# ABSTRACT: The basic containment relation between a place and one that contains it.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'containedIn';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The basic containment relation between a place and one that contains it.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
