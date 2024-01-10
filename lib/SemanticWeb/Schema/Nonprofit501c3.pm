use utf8;

package SemanticWeb::Schema::Nonprofit501c3;

# ABSTRACT: Nonprofit501c3: Non-profit type referring to Religious

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Nonprofit501c3';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Nonprofit501c3: Non-profit type referring to Religious, Educational,
Charitable, Scientific, Literary, Testing for Public Safety, Fostering
National or International Amateur Sports Competition, or Prevention of
Cruelty to Children or Animals Organizations.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
