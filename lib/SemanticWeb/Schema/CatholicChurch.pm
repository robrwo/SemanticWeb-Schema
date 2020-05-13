use utf8;

package SemanticWeb::Schema::CatholicChurch;

# ABSTRACT: A Catholic church.

use Moo;

extends qw/ SemanticWeb::Schema::Church /;


use MooX::JSON_LD 'CatholicChurch';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v8.0.0';

=encoding utf8

=head1 DESCRIPTION

A Catholic church.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Church>

=cut

1;
