use utf8;

package SemanticWeb::Schema::agent;

# ABSTRACT: The direct performer or driver of the action (animate or inanimate)

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'agent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The direct performer or driver of the action (animate or inanimate). E.g.
*John* wrote a book.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
