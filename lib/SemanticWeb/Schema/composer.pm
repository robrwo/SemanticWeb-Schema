use utf8;

package SemanticWeb::Schema::composer;

# ABSTRACT: The person or organization who wrote a composition

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'composer';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The person or organization who wrote a composition, or who is the composer
of a work performed at some event.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
