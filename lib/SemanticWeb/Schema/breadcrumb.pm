use utf8;

package SemanticWeb::Schema::breadcrumb;

# ABSTRACT: A set of links that can help a user understand and navigate a website hierarchy.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'breadcrumb';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A set of links that can help a user understand and navigate a website
hierarchy.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
