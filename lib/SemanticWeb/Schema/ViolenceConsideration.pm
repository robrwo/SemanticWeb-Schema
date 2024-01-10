use utf8;

package SemanticWeb::Schema::ViolenceConsideration;

# ABSTRACT: Item shows or promotes violence.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'ViolenceConsideration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Item shows or promotes violence.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
