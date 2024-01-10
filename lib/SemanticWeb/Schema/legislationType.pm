use utf8;

package SemanticWeb::Schema::legislationType;

# ABSTRACT: The type of the legislation

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'legislationType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The type of the legislation. Examples of values are "law", "act",
"directive", "decree", "regulation", "statutory instrument", "loi
organique", "règlement grand-ducal", etc., depending on the country.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
