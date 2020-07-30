use utf8;

package SemanticWeb::Schema::AdministrativeArea;

# ABSTRACT: A geographical region

use Moo;

extends qw/ SemanticWeb::Schema::Place /;


use MooX::JSON_LD 'AdministrativeArea';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v9.0.1';

=encoding utf8

=head1 DESCRIPTION

A geographical region, typically under the jurisdiction of a particular
government.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Place>

=cut

1;
