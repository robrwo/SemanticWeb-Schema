use utf8;

package SemanticWeb::Schema::material;

# ABSTRACT: A material that something is made from, e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'material';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A material that something is made from, e.g. leather, wool, cotton, paper.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
