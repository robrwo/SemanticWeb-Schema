use utf8;

package SemanticWeb::Schema::significantLinks;

# ABSTRACT: The most significant URLs on the page

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'significantLinks';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The most significant URLs on the page. Typically, these are the
non-navigation links that are clicked on the most.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
