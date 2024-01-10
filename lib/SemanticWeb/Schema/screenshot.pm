use utf8;

package SemanticWeb::Schema::screenshot;

# ABSTRACT: A link to a screenshot image of the app.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'screenshot';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A link to a screenshot image of the app.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
