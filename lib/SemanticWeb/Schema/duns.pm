use utf8;

package SemanticWeb::Schema::duns;

# ABSTRACT: The Dun & Bradstreet DUNS number for identifying an organization or business person.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'duns';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The Dun & Bradstreet DUNS number for identifying an organization or
business person.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
